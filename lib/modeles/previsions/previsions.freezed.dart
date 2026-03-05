// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'previsions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Previsions {

 List<Meteo> get list;
/// Create a copy of Previsions
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrevisionsCopyWith<Previsions> get copyWith => _$PrevisionsCopyWithImpl<Previsions>(this as Previsions, _$identity);

  /// Serializes this Previsions to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Previsions&&const DeepCollectionEquality().equals(other.list, list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(list));

@override
String toString() {
  return 'Previsions(list: $list)';
}


}

/// @nodoc
abstract mixin class $PrevisionsCopyWith<$Res>  {
  factory $PrevisionsCopyWith(Previsions value, $Res Function(Previsions) _then) = _$PrevisionsCopyWithImpl;
@useResult
$Res call({
 List<Meteo> list
});




}
/// @nodoc
class _$PrevisionsCopyWithImpl<$Res>
    implements $PrevisionsCopyWith<$Res> {
  _$PrevisionsCopyWithImpl(this._self, this._then);

  final Previsions _self;
  final $Res Function(Previsions) _then;

/// Create a copy of Previsions
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? list = null,}) {
  return _then(_self.copyWith(
list: null == list ? _self.list : list // ignore: cast_nullable_to_non_nullable
as List<Meteo>,
  ));
}

}


/// Adds pattern-matching-related methods to [Previsions].
extension PrevisionsPatterns on Previsions {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Previsions value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Previsions() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Previsions value)  $default,){
final _that = this;
switch (_that) {
case _Previsions():
return $default(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Previsions value)?  $default,){
final _that = this;
switch (_that) {
case _Previsions() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Meteo> list)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Previsions() when $default != null:
return $default(_that.list);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Meteo> list)  $default,) {final _that = this;
switch (_that) {
case _Previsions():
return $default(_that.list);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Meteo> list)?  $default,) {final _that = this;
switch (_that) {
case _Previsions() when $default != null:
return $default(_that.list);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Previsions implements Previsions {
   _Previsions({required final  List<Meteo> list}): _list = list;
  factory _Previsions.fromJson(Map<String, dynamic> json) => _$PrevisionsFromJson(json);

 final  List<Meteo> _list;
@override List<Meteo> get list {
  if (_list is EqualUnmodifiableListView) return _list;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_list);
}


/// Create a copy of Previsions
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrevisionsCopyWith<_Previsions> get copyWith => __$PrevisionsCopyWithImpl<_Previsions>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrevisionsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Previsions&&const DeepCollectionEquality().equals(other._list, _list));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_list));

@override
String toString() {
  return 'Previsions(list: $list)';
}


}

/// @nodoc
abstract mixin class _$PrevisionsCopyWith<$Res> implements $PrevisionsCopyWith<$Res> {
  factory _$PrevisionsCopyWith(_Previsions value, $Res Function(_Previsions) _then) = __$PrevisionsCopyWithImpl;
@override @useResult
$Res call({
 List<Meteo> list
});




}
/// @nodoc
class __$PrevisionsCopyWithImpl<$Res>
    implements _$PrevisionsCopyWith<$Res> {
  __$PrevisionsCopyWithImpl(this._self, this._then);

  final _Previsions _self;
  final $Res Function(_Previsions) _then;

/// Create a copy of Previsions
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? list = null,}) {
  return _then(_Previsions(
list: null == list ? _self._list : list // ignore: cast_nullable_to_non_nullable
as List<Meteo>,
  ));
}


}

// dart format on
