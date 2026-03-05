import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:application_meteo_flutter/services/api_meteo/api.dart';
import 'package:application_meteo_flutter/modeles/meteo/meteo.dart';
import 'package:application_meteo_flutter/services/erreur_api.dart';
import 'package:application_meteo_flutter/services/depot_meteo.dart';

class MockHttpClient extends Mock implements http.Client {}

const reponseMeteoJSONEncodee = """
{
  "coord": {
    "lon": -122.08,
    "lat": 37.39
  },
  "weather": [
    {
      "id": 800,
      "main": "Clear",
      "description": "clear sky",
      "icon": "01d"
    }
  ],
  "base": "stations",
  "main": {
    "temp": 282.55,
    "feels_like": 281.86,
    "temp_min": 280.37,
    "temp_max": 284.26,
    "pressure": 1023,
    "humidity": 100
  },
  "visibility": 16093,
  "wind": {
    "speed": 1.5,
    "deg": 350
  },
  "clouds": {
    "all": 1
  },
  "dt": 1560350645,
  "sys": {
    "type": 1,
    "id": 5122,
    "message": 0.0139,
    "country": "US",
    "sunrise": 1560343627,
    "sunset": 1560396563
  },
  "timezone": -25200,
  "id": 420006353,
  "name": "Mountain View",
  "cod": 200
  }  
""";

final meteoAttendueDepuisJSON = Meteo(
  parametresMeteo: ParametresMeteo(temp: 282.55, tempMin: 280.37, tempMax: 284.26),
  infosMeteo: [
    InfosMeteo(
      description: 'clear sky',
      icon: '01d',
      main: 'Clear',
    )
  ],
  dt: 1560350645,
);

void main() {
  test('depot avec client http moqué, succès', () async {
    final clientHttpMoque = MockHttpClient();
    final api = APIOpenWeatherMap('cleApi');
    final depotMeteo =
        DepotMeteoHttp(api: api, client: clientHttpMoque);
    when(() => clientHttpMoque.get(api.meteo('Paris'))).thenAnswer(
        (_) => Future.value(http.Response(reponseMeteoJSONEncodee, 200)));
    final meteo = await depotMeteo.obtenirMeteo(ville: 'Paris');
    // attentes
    expect(meteo, meteoAttendueDepuisJSON);
  });

  test('depot avec client http moqué, échec', () async {
    final clientHttpMoque = MockHttpClient();
    final api = APIOpenWeatherMap('cleApi');
    final depotMeteo =
        DepotMeteoHttp(api: api, client: clientHttpMoque);
    when(() => clientHttpMoque.get(api.meteo('Paris')))
        .thenAnswer((_) => Future.value(http.Response('{}', 401)));
    // attentes
    expect(() => depotMeteo.obtenirMeteo(ville: 'Paris'),
        throwsA(isA<ErreurAPI>()));
  });
}
