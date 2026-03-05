import 'package:freezed_annotation/freezed_annotation.dart';

part 'meteo.freezed.dart';
part 'meteo.g.dart';

@freezed
abstract class ParametresMeteo with _$ParametresMeteo {
  factory ParametresMeteo({
    required double temp,
    @JsonKey(name: 'temp_min') required double tempMin,
    @JsonKey(name: 'temp_max') required double tempMax,
  }) = _ParametresMeteo;

  factory ParametresMeteo.fromJson(Map<String, dynamic> json) =>
      _$ParametresMeteoFromJson(json);
}

@freezed
abstract class InfosMeteo with _$InfosMeteo {
  factory InfosMeteo({
    required String main,
    required String description,
    required String icon,
  }) = _InfosMeteo;

  factory InfosMeteo.fromJson(Map<String, dynamic> json) =>
      _$InfosMeteoFromJson(json);
}

@freezed
abstract class Meteo with _$Meteo {
  factory Meteo({
    @JsonKey(name: 'main') required ParametresMeteo parametresMeteo,
    @JsonKey(name: 'weather') required List<InfosMeteo> infosMeteo,
    required int dt,
  }) = _Meteo;

  factory Meteo.fromJson(Map<String, dynamic> json) =>
      _$MeteoFromJson(json);
}