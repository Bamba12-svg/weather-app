import 'package:application_meteo_flutter/modeles/temperature.dart';
import 'package:application_meteo_flutter/modeles/meteo/meteo.dart';

class DonneesMeteo {
  DonneesMeteo({
    required this.temperature,
    required this.tempMin,
    required this.tempMax,
    required this.description,
    required this.date,
    required this.icone,
  });

  factory DonneesMeteo.from(Meteo meteo) {
    return DonneesMeteo(
      temperature: Temperature.celsius(meteo.parametresMeteo.temp),
      tempMin: Temperature.celsius(meteo.parametresMeteo.tempMin),
      tempMax: Temperature.celsius(meteo.parametresMeteo.tempMax),
      description: meteo.infosMeteo[0].main,
      date: DateTime.fromMillisecondsSinceEpoch(meteo.dt * 1000),
      icone: meteo.infosMeteo[0].icon,
    );
  }

  final Temperature temperature;
  final Temperature tempMin;
  final Temperature tempMax;
  final String description;
  final DateTime date;
  final String icone;

  String get urlIcone => "https://openweathermap.org/img/wn/$icone@2x.png";
}