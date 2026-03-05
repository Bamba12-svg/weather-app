import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:application_meteo_flutter/coeur/constantes/villes_senegal.dart';
import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo.dart';
import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo_ville.dart';
import 'package:application_meteo_flutter/services/depot_meteo.dart';

final fournisseurModeTheme = StateProvider<bool>((ref) => false); 

const messagesAttente = [
  'Nous téléchargeons les données…',
  'C\'est presque fini…',
  'Plus que quelques secondes avant d\'avoir le résultat…',
];

class EtatMeteoVilles {
  final List<DonneesMeteoVille> villesChargees;
  final bool enChargement;
  final bool termine;
  final String? erreur;
  final double progression; 
  final int indexMessage;

  const EtatMeteoVilles({
    this.villesChargees = const [],
    this.enChargement = false,
    this.termine = false,
    this.erreur,
    this.progression = 0.0,
    this.indexMessage = 0,
  });

  EtatMeteoVilles copier({
    List<DonneesMeteoVille>? villesChargees,
    bool? enChargement,
    bool? termine,
    String? erreur,
    double? progression,
    int? indexMessage,
  }) =>
      EtatMeteoVilles(
        villesChargees: villesChargees ?? this.villesChargees,
        enChargement: enChargement ?? this.enChargement,
        termine: termine ?? this.termine,
        erreur: erreur,
        progression: progression ?? this.progression,
        indexMessage: indexMessage ?? this.indexMessage,
      );
}

class MeteoVillesNotifier extends StateNotifier<EtatMeteoVilles> {
  MeteoVillesNotifier(this._depot) : super(const EtatMeteoVilles());

  final DepotMeteoHttp _depot;
  Timer? _timerMessage;

  Future<void> chargerVilles() async {
    state = const EtatMeteoVilles(enChargement: true);
    _demarrerTimerMessages();

    final resultats = <DonneesMeteoVille>[];
    String? derniereErreur;

    for (int i = 0; i < villesSenegal.length; i++) {
      
      await Future.delayed(const Duration(seconds: 2));
      try {
        final ville = villesSenegal[i];
        final meteo = await _depot.obtenirMeteo(ville: ville.nom);
        resultats.add(DonneesMeteoVille(
          ville: ville,
          donnees: DonneesMeteo.from(meteo),
        ));
      } catch (e) {
        derniereErreur = e.toString();
      }
      state = state.copier(
        villesChargees: List.from(resultats),
        progression: (i + 1) / villesSenegal.length,
      );
    }

    _timerMessage?.cancel();

    if (resultats.isEmpty && derniereErreur != null) {
      state = state.copier(
        enChargement: false,
        termine: false,
        erreur: derniereErreur,
        progression: 0.0,
      );
    } else {
      state = state.copier(
        enChargement: false,
        termine: true,
        erreur: derniereErreur,
        progression: 1.0,
      );
    }
  }

  void reinitialiser() {
    _timerMessage?.cancel();
    state = const EtatMeteoVilles();
  }

  void _demarrerTimerMessages() {
    _timerMessage?.cancel();
    _timerMessage = Timer.periodic(const Duration(seconds: 3), (_) {
      state = state.copier(
        indexMessage: (state.indexMessage + 1) % messagesAttente.length,
      );
    });
  }

  @override
  void dispose() {
    _timerMessage?.cancel();
    super.dispose();
  }
}

final fournisseurMeteoVilles =
    StateNotifierProvider.autoDispose<MeteoVillesNotifier, EtatMeteoVilles>(
  (ref) => MeteoVillesNotifier(ref.watch(fournisseurDepotMeteo)),
);