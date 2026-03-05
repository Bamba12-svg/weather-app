// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'previsions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Previsions _$PrevisionsFromJson(Map<String, dynamic> json) => _Previsions(
  list: (json['list'] as List<dynamic>)
      .map((e) => Meteo.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$PrevisionsToJson(_Previsions instance) =>
    <String, dynamic>{'list': instance.list};
