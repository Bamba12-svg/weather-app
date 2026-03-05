// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'erreur_api.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ErreurAPI {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ErreurAPI);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErreurAPI()';
}


}

/// @nodoc
class $ErreurAPICopyWith<$Res>  {
$ErreurAPICopyWith(ErreurAPI _, $Res Function(ErreurAPI) __);
}


/// Adds pattern-matching-related methods to [ErreurAPI].
extension ErreurAPIPatterns on ErreurAPI {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _CleApiInvalide value)?  cleApiInvalide,TResult Function( _PasDeConnexionInternet value)?  pasDeConnexionInternet,TResult Function( _Introuvable value)?  introuvable,TResult Function( _Inconnue value)?  inconnue,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CleApiInvalide() when cleApiInvalide != null:
return cleApiInvalide(_that);case _PasDeConnexionInternet() when pasDeConnexionInternet != null:
return pasDeConnexionInternet(_that);case _Introuvable() when introuvable != null:
return introuvable(_that);case _Inconnue() when inconnue != null:
return inconnue(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _CleApiInvalide value)  cleApiInvalide,required TResult Function( _PasDeConnexionInternet value)  pasDeConnexionInternet,required TResult Function( _Introuvable value)  introuvable,required TResult Function( _Inconnue value)  inconnue,}){
final _that = this;
switch (_that) {
case _CleApiInvalide():
return cleApiInvalide(_that);case _PasDeConnexionInternet():
return pasDeConnexionInternet(_that);case _Introuvable():
return introuvable(_that);case _Inconnue():
return inconnue(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _CleApiInvalide value)?  cleApiInvalide,TResult? Function( _PasDeConnexionInternet value)?  pasDeConnexionInternet,TResult? Function( _Introuvable value)?  introuvable,TResult? Function( _Inconnue value)?  inconnue,}){
final _that = this;
switch (_that) {
case _CleApiInvalide() when cleApiInvalide != null:
return cleApiInvalide(_that);case _PasDeConnexionInternet() when pasDeConnexionInternet != null:
return pasDeConnexionInternet(_that);case _Introuvable() when introuvable != null:
return introuvable(_that);case _Inconnue() when inconnue != null:
return inconnue(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  cleApiInvalide,TResult Function()?  pasDeConnexionInternet,TResult Function()?  introuvable,TResult Function()?  inconnue,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CleApiInvalide() when cleApiInvalide != null:
return cleApiInvalide();case _PasDeConnexionInternet() when pasDeConnexionInternet != null:
return pasDeConnexionInternet();case _Introuvable() when introuvable != null:
return introuvable();case _Inconnue() when inconnue != null:
return inconnue();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  cleApiInvalide,required TResult Function()  pasDeConnexionInternet,required TResult Function()  introuvable,required TResult Function()  inconnue,}) {final _that = this;
switch (_that) {
case _CleApiInvalide():
return cleApiInvalide();case _PasDeConnexionInternet():
return pasDeConnexionInternet();case _Introuvable():
return introuvable();case _Inconnue():
return inconnue();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  cleApiInvalide,TResult? Function()?  pasDeConnexionInternet,TResult? Function()?  introuvable,TResult? Function()?  inconnue,}) {final _that = this;
switch (_that) {
case _CleApiInvalide() when cleApiInvalide != null:
return cleApiInvalide();case _PasDeConnexionInternet() when pasDeConnexionInternet != null:
return pasDeConnexionInternet();case _Introuvable() when introuvable != null:
return introuvable();case _Inconnue() when inconnue != null:
return inconnue();case _:
  return null;

}
}

}

/// @nodoc


class _CleApiInvalide implements ErreurAPI {
  const _CleApiInvalide();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CleApiInvalide);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErreurAPI.cleApiInvalide()';
}


}




/// @nodoc


class _PasDeConnexionInternet implements ErreurAPI {
  const _PasDeConnexionInternet();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PasDeConnexionInternet);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErreurAPI.pasDeConnexionInternet()';
}


}




/// @nodoc


class _Introuvable implements ErreurAPI {
  const _Introuvable();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Introuvable);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErreurAPI.introuvable()';
}


}




/// @nodoc


class _Inconnue implements ErreurAPI {
  const _Inconnue();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Inconnue);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ErreurAPI.inconnue()';
}


}




// dart format on
