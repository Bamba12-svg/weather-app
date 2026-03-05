import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo.dart';
import 'package:application_meteo_flutter/coeur/constantes/villes_senegal.dart';

class DonneesMeteoVille {
  final VilleSenegal ville;
  final DonneesMeteo donnees;

  const DonneesMeteoVille({
    required this.ville,
    required this.donnees,
  });
}