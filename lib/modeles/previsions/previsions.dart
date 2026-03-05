import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:application_meteo_flutter/modeles/meteo/meteo.dart';

part 'previsions.g.dart';
part 'previsions.freezed.dart';

@freezed
abstract class Previsions with _$Previsions {
  factory Previsions({
    required List<Meteo> list,
  }) = _Previsions;

  factory Previsions.fromJson(Map<String, dynamic> json) =>
      _$PrevisionsFromJson(json);
}