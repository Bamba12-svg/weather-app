import 'dart:convert';
import 'dart:io';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:application_meteo_flutter/services/api_meteo/api.dart';
import 'package:application_meteo_flutter/services/api_meteo/api_keys.dart';
import 'package:application_meteo_flutter/modeles/previsions/previsions.dart';
import 'package:application_meteo_flutter/modeles/meteo/meteo.dart';
import 'package:application_meteo_flutter/services/erreur_api.dart';

class DepotMeteoHttp {
  DepotMeteoHttp({required this.api, required this.client});
  final APIOpenWeatherMap api;
  final http.Client client;

  Future<Previsions> obtenirPrevisions({required String ville}) => _obtenirDonnees(
        uri: api.previsions(ville),
        constructeur: (donnees) => Previsions.fromJson(donnees),
      );

  Future<Meteo> obtenirMeteo({required String ville}) => _obtenirDonnees(
        uri: api.meteo(ville),
        constructeur: (donnees) => Meteo.fromJson(donnees),
      );

  Future<T> _obtenirDonnees<T>({
    required Uri uri,
    required T Function(dynamic donnees) constructeur,
  }) async {
    try {
      final reponse = await client.get(uri);
      switch (reponse.statusCode) {
        case 200:
          final donnees = json.decode(reponse.body);
          return constructeur(donnees);
        case 401:
          throw const ErreurAPI.cleApiInvalide();
        case 404:
          throw const ErreurAPI.introuvable();
        default:
          throw const ErreurAPI.inconnue();
      }
    } on SocketException catch (_) {
      throw const ErreurAPI.pasDeConnexionInternet();
    }
  }
}

final fournisseurDepotMeteo = Provider<DepotMeteoHttp>((ref) {
  const cleApi = String.fromEnvironment(
    'API_KEY',
    defaultValue: ClesAPI.cleOpenWeather,
  );
  return DepotMeteoHttp(
    api: APIOpenWeatherMap(cleApi),
    client: http.Client(),
  );
});