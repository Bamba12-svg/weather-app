
class APIOpenWeatherMap {
  APIOpenWeatherMap(this.cleApi);
  final String cleApi;

  static const String _urlBaseApi = "api.openweathermap.org";
  static const String _cheminApi = "/data/2.5/";

  Uri meteo(String ville) => _construireUri(
        pointEntree: "weather",
        constructeurParametres: () => parametresRechercheVille(ville),
      );

  Uri previsions(String ville) => _construireUri(
        pointEntree: "forecast",
        constructeurParametres: () => parametresRechercheVille(ville),
      );

  Uri _construireUri({
    required String pointEntree,
    required Map<String, dynamic> Function() constructeurParametres,
  }) {
    return Uri(
      scheme: "https",
      host: _urlBaseApi,
      path: "$_cheminApi$pointEntree",
      queryParameters: constructeurParametres(),
    );
  }

  Map<String, dynamic> parametresRechercheVille(String ville) => {
        "q": ville,
        "appid": cleApi,
        "units": "metric",
      };
}