import 'package:application_meteo_flutter/modeles/previsions/previsions.dart';
import 'package:application_meteo_flutter/modeles/meteo/donnees_meteo.dart';

class DonneesPrevisions {
  const DonneesPrevisions(this.liste);
  factory DonneesPrevisions.from(Previsions previsions) {
    return DonneesPrevisions(
      previsions.list.map((item) => DonneesMeteo.from(item)).toList(),
    );
  }
  final List<DonneesMeteo> liste;
}