import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'erreur_api.freezed.dart';

@freezed
class ErreurAPI with _$ErreurAPI {
  const factory ErreurAPI.cleApiInvalide() = _CleApiInvalide;
  const factory ErreurAPI.pasDeConnexionInternet() = _PasDeConnexionInternet;
  const factory ErreurAPI.introuvable() = _Introuvable;
  const factory ErreurAPI.inconnue() = _Inconnue;
}

extension ErreurMeteoAsync on ErreurAPI {
  AsyncValue<T> enAsyncValue<T>() => when(
        cleApiInvalide: () => AsyncValue.error('Clé API invalide', StackTrace.empty),
        pasDeConnexionInternet: () =>
            AsyncValue.error('Pas de connexion Internet', StackTrace.empty),
        introuvable: () => AsyncValue.error('Ville introuvable', StackTrace.empty),
        inconnue: () => AsyncValue.error('Une erreur est survenue', StackTrace.empty),
      );
}