// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meteo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ParametresMeteo _$ParametresMeteoFromJson(Map<String, dynamic> json) =>
    _ParametresMeteo(
      temp: (json['temp'] as num).toDouble(),
      tempMin: (json['temp_min'] as num).toDouble(),
      tempMax: (json['temp_max'] as num).toDouble(),
    );

Map<String, dynamic> _$ParametresMeteoToJson(_ParametresMeteo instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'temp_min': instance.tempMin,
      'temp_max': instance.tempMax,
    };

_InfosMeteo _$InfosMeteoFromJson(Map<String, dynamic> json) => _InfosMeteo(
  main: json['main'] as String,
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$InfosMeteoToJson(_InfosMeteo instance) =>
    <String, dynamic>{
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

_Meteo _$MeteoFromJson(Map<String, dynamic> json) => _Meteo(
  parametresMeteo: ParametresMeteo.fromJson(
    json['main'] as Map<String, dynamic>,
  ),
  infosMeteo: (json['weather'] as List<dynamic>)
      .map((e) => InfosMeteo.fromJson(e as Map<String, dynamic>))
      .toList(),
  dt: (json['dt'] as num).toInt(),
);

Map<String, dynamic> _$MeteoToJson(_Meteo instance) => <String, dynamic>{
  'main': instance.parametresMeteo,
  'weather': instance.infosMeteo,
  'dt': instance.dt,
};
