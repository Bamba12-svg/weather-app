// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meteo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ParametresMeteo {

 double get temp;@JsonKey(name: 'temp_min') double get tempMin;@JsonKey(name: 'temp_max') double get tempMax;
/// Create a copy of ParametresMeteo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ParametresMeteoCopyWith<ParametresMeteo> get copyWith => _$ParametresMeteoCopyWithImpl<ParametresMeteo>(this as ParametresMeteo, _$identity);

  /// Serializes this ParametresMeteo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ParametresMeteo&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,tempMin,tempMax);

@override
String toString() {
  return 'ParametresMeteo(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
}


}

/// @nodoc
abstract mixin class $ParametresMeteoCopyWith<$Res>  {
  factory $ParametresMeteoCopyWith(ParametresMeteo value, $Res Function(ParametresMeteo) _then) = _$ParametresMeteoCopyWithImpl;
@useResult
$Res call({
 double temp,@JsonKey(name: 'temp_min') double tempMin,@JsonKey(name: 'temp_max') double tempMax
});




}
/// @nodoc
class _$ParametresMeteoCopyWithImpl<$Res>
    implements $ParametresMeteoCopyWith<$Res> {
  _$ParametresMeteoCopyWithImpl(this._self, this._then);

  final ParametresMeteo _self;
  final $Res Function(ParametresMeteo) _then;

/// Create a copy of ParametresMeteo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? tempMin = null,Object? tempMax = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ParametresMeteo].
extension ParametresMeteoPatterns on ParametresMeteo {

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ParametresMeteo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ParametresMeteo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ParametresMeteo value)  $default,){
final _that = this;
switch (_that) {
case _ParametresMeteo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ParametresMeteo value)?  $default,){
final _that = this;
switch (_that) {
case _ParametresMeteo() when $default != null:
return $default(_that);case _:
  return null;

}
}

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp, @JsonKey(name: 'temp_min')  double tempMin, @JsonKey(name: 'temp_max')  double tempMax)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ParametresMeteo() when $default != null:
return $default(_that.temp,_that.tempMin,_that.tempMax);case _:
  return orElse();

}
}

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp, @JsonKey(name: 'temp_min')  double tempMin, @JsonKey(name: 'temp_max')  double tempMax)  $default,) {final _that = this;
switch (_that) {
case _ParametresMeteo():
return $default(_that.temp,_that.tempMin,_that.tempMax);case _:
  throw StateError('Unexpected subclass');

}
}


@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp, @JsonKey(name: 'temp_min')  double tempMin, @JsonKey(name: 'temp_max')  double tempMax)?  $default,) {final _that = this;
switch (_that) {
case _ParametresMeteo() when $default != null:
return $default(_that.temp,_that.tempMin,_that.tempMax);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ParametresMeteo implements ParametresMeteo {
   _ParametresMeteo({required this.temp, @JsonKey(name: 'temp_min') required this.tempMin, @JsonKey(name: 'temp_max') required this.tempMax});
  factory _ParametresMeteo.fromJson(Map<String, dynamic> json) => _$ParametresMeteoFromJson(json);

@override final  double temp;
@override@JsonKey(name: 'temp_min') final  double tempMin;
@override@JsonKey(name: 'temp_max') final  double tempMax;


@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParametresMeteoCopyWith<_ParametresMeteo> get copyWith => __$ParametresMeteoCopyWithImpl<_ParametresMeteo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ParametresMeteoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParametresMeteo&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.tempMin, tempMin) || other.tempMin == tempMin)&&(identical(other.tempMax, tempMax) || other.tempMax == tempMax));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,tempMin,tempMax);

@override
String toString() {
  return 'ParametresMeteo(temp: $temp, tempMin: $tempMin, tempMax: $tempMax)';
}


}

/// @nodoc
abstract mixin class _$ParametresMeteoCopyWith<$Res> implements $ParametresMeteoCopyWith<$Res> {
  factory _$ParametresMeteoCopyWith(_ParametresMeteo value, $Res Function(_ParametresMeteo) _then) = __$ParametresMeteoCopyWithImpl;
@override @useResult
$Res call({
 double temp,@JsonKey(name: 'temp_min') double tempMin,@JsonKey(name: 'temp_max') double tempMax
});




}
/// @nodoc
class __$ParametresMeteoCopyWithImpl<$Res>
    implements _$ParametresMeteoCopyWith<$Res> {
  __$ParametresMeteoCopyWithImpl(this._self, this._then);

  final _ParametresMeteo _self;
  final $Res Function(_ParametresMeteo) _then;

/// Create a copy of ParametresMeteo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? tempMin = null,Object? tempMax = null,}) {
  return _then(_ParametresMeteo(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,tempMin: null == tempMin ? _self.tempMin : tempMin // ignore: cast_nullable_to_non_nullable
as double,tempMax: null == tempMax ? _self.tempMax : tempMax // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}


/// @nodoc
mixin _$InfosMeteo {

 String get main; String get description; String get icon;
/// Create a copy of InfosMeteo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfosMeteoCopyWith<InfosMeteo> get copyWith => _$InfosMeteoCopyWithImpl<InfosMeteo>(this as InfosMeteo, _$identity);

  /// Serializes this InfosMeteo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfosMeteo&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,description,icon);

@override
String toString() {
  return 'InfosMeteo(main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $InfosMeteoCopyWith<$Res>  {
  factory $InfosMeteoCopyWith(InfosMeteo value, $Res Function(InfosMeteo) _then) = _$InfosMeteoCopyWithImpl;
@useResult
$Res call({
 String main, String description, String icon
});




}
/// @nodoc
class _$InfosMeteoCopyWithImpl<$Res>
    implements $InfosMeteoCopyWith<$Res> {
  _$InfosMeteoCopyWithImpl(this._self, this._then);

  final InfosMeteo _self;
  final $Res Function(InfosMeteo) _then;

/// Create a copy of InfosMeteo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [InfosMeteo].
extension InfosMeteoPatterns on InfosMeteo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfosMeteo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfosMeteo() when $default != null:
return $default(_that);case _:
  return orElse();

}
}

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfosMeteo value)  $default,){
final _that = this;
switch (_that) {
case _InfosMeteo():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfosMeteo value)?  $default,){
final _that = this;
switch (_that) {
case _InfosMeteo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String main,  String description,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfosMeteo() when $default != null:
return $default(_that.main,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String main,  String description,  String icon)  $default,) {final _that = this;
switch (_that) {
case _InfosMeteo():
return $default(_that.main,_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String main,  String description,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _InfosMeteo() when $default != null:
return $default(_that.main,_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfosMeteo implements InfosMeteo {
   _InfosMeteo({required this.main, required this.description, required this.icon});
  factory _InfosMeteo.fromJson(Map<String, dynamic> json) => _$InfosMeteoFromJson(json);

@override final  String main;
@override final  String description;
@override final  String icon;

/// Create a copy of InfosMeteo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfosMeteoCopyWith<_InfosMeteo> get copyWith => __$InfosMeteoCopyWithImpl<_InfosMeteo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfosMeteoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfosMeteo&&(identical(other.main, main) || other.main == main)&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,description,icon);

@override
String toString() {
  return 'InfosMeteo(main: $main, description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$InfosMeteoCopyWith<$Res> implements $InfosMeteoCopyWith<$Res> {
  factory _$InfosMeteoCopyWith(_InfosMeteo value, $Res Function(_InfosMeteo) _then) = __$InfosMeteoCopyWithImpl;
@override @useResult
$Res call({
 String main, String description, String icon
});




}
/// @nodoc
class __$InfosMeteoCopyWithImpl<$Res>
    implements _$InfosMeteoCopyWith<$Res> {
  __$InfosMeteoCopyWithImpl(this._self, this._then);

  final _InfosMeteo _self;
  final $Res Function(_InfosMeteo) _then;

/// Create a copy of InfosMeteo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? description = null,Object? icon = null,}) {
  return _then(_InfosMeteo(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$Meteo {

@JsonKey(name: 'main') ParametresMeteo get parametresMeteo;@JsonKey(name: 'weather') List<InfosMeteo> get infosMeteo; int get dt;
/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MeteoCopyWith<Meteo> get copyWith => _$MeteoCopyWithImpl<Meteo>(this as Meteo, _$identity);

  /// Serializes this Meteo to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Meteo&&(identical(other.parametresMeteo, parametresMeteo) || other.parametresMeteo == parametresMeteo)&&const DeepCollectionEquality().equals(other.infosMeteo, infosMeteo)&&(identical(other.dt, dt) || other.dt == dt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parametresMeteo,const DeepCollectionEquality().hash(infosMeteo),dt);

@override
String toString() {
  return 'Meteo(parametresMeteo: $parametresMeteo, infosMeteo: $infosMeteo, dt: $dt)';
}


}

/// @nodoc
abstract mixin class $MeteoCopyWith<$Res>  {
  factory $MeteoCopyWith(Meteo value, $Res Function(Meteo) _then) = _$MeteoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'main') ParametresMeteo parametresMeteo,@JsonKey(name: 'weather') List<InfosMeteo> infosMeteo, int dt
});


$ParametresMeteoCopyWith<$Res> get parametresMeteo;

}
/// @nodoc
class _$MeteoCopyWithImpl<$Res>
    implements $MeteoCopyWith<$Res> {
  _$MeteoCopyWithImpl(this._self, this._then);

  final Meteo _self;
  final $Res Function(Meteo) _then;

/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? parametresMeteo = null,Object? infosMeteo = null,Object? dt = null,}) {
  return _then(_self.copyWith(
parametresMeteo: null == parametresMeteo ? _self.parametresMeteo : parametresMeteo // ignore: cast_nullable_to_non_nullable
as ParametresMeteo,infosMeteo: null == infosMeteo ? _self.infosMeteo : infosMeteo // ignore: cast_nullable_to_non_nullable
as List<InfosMeteo>,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParametresMeteoCopyWith<$Res> get parametresMeteo {
  
  return $ParametresMeteoCopyWith<$Res>(_self.parametresMeteo, (value) {
    return _then(_self.copyWith(parametresMeteo: value));
  });
}
}


/// Adds pattern-matching-related methods to [Meteo].
extension MeteoPatterns on Meteo {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Meteo value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Meteo() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Meteo value)  $default,){
final _that = this;
switch (_that) {
case _Meteo():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Meteo value)?  $default,){
final _that = this;
switch (_that) {
case _Meteo() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'main')  ParametresMeteo parametresMeteo, @JsonKey(name: 'weather')  List<InfosMeteo> infosMeteo,  int dt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Meteo() when $default != null:
return $default(_that.parametresMeteo,_that.infosMeteo,_that.dt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'main')  ParametresMeteo parametresMeteo, @JsonKey(name: 'weather')  List<InfosMeteo> infosMeteo,  int dt)  $default,) {final _that = this;
switch (_that) {
case _Meteo():
return $default(_that.parametresMeteo,_that.infosMeteo,_that.dt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'main')  ParametresMeteo parametresMeteo, @JsonKey(name: 'weather')  List<InfosMeteo> infosMeteo,  int dt)?  $default,) {final _that = this;
switch (_that) {
case _Meteo() when $default != null:
return $default(_that.parametresMeteo,_that.infosMeteo,_that.dt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Meteo implements Meteo {
   _Meteo({@JsonKey(name: 'main') required this.parametresMeteo, @JsonKey(name: 'weather') required final  List<InfosMeteo> infosMeteo, required this.dt}): _infosMeteo = infosMeteo;
  factory _Meteo.fromJson(Map<String, dynamic> json) => _$MeteoFromJson(json);

@override@JsonKey(name: 'main') final  ParametresMeteo parametresMeteo;
 final  List<InfosMeteo> _infosMeteo;
@override@JsonKey(name: 'weather') List<InfosMeteo> get infosMeteo {
  if (_infosMeteo is EqualUnmodifiableListView) return _infosMeteo;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_infosMeteo);
}

@override final  int dt;

/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MeteoCopyWith<_Meteo> get copyWith => __$MeteoCopyWithImpl<_Meteo>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MeteoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Meteo&&(identical(other.parametresMeteo, parametresMeteo) || other.parametresMeteo == parametresMeteo)&&const DeepCollectionEquality().equals(other._infosMeteo, _infosMeteo)&&(identical(other.dt, dt) || other.dt == dt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,parametresMeteo,const DeepCollectionEquality().hash(_infosMeteo),dt);

@override
String toString() {
  return 'Meteo(parametresMeteo: $parametresMeteo, infosMeteo: $infosMeteo, dt: $dt)';
}


}

/// @nodoc
abstract mixin class _$MeteoCopyWith<$Res> implements $MeteoCopyWith<$Res> {
  factory _$MeteoCopyWith(_Meteo value, $Res Function(_Meteo) _then) = __$MeteoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'main') ParametresMeteo parametresMeteo,@JsonKey(name: 'weather') List<InfosMeteo> infosMeteo, int dt
});


@override $ParametresMeteoCopyWith<$Res> get parametresMeteo;

}
/// @nodoc
class __$MeteoCopyWithImpl<$Res>
    implements _$MeteoCopyWith<$Res> {
  __$MeteoCopyWithImpl(this._self, this._then);

  final _Meteo _self;
  final $Res Function(_Meteo) _then;

/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? parametresMeteo = null,Object? infosMeteo = null,Object? dt = null,}) {
  return _then(_Meteo(
parametresMeteo: null == parametresMeteo ? _self.parametresMeteo : parametresMeteo // ignore: cast_nullable_to_non_nullable
as ParametresMeteo,infosMeteo: null == infosMeteo ? _self._infosMeteo : infosMeteo // ignore: cast_nullable_to_non_nullable
as List<InfosMeteo>,dt: null == dt ? _self.dt : dt // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of Meteo
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ParametresMeteoCopyWith<$Res> get parametresMeteo {
  
  return $ParametresMeteoCopyWith<$Res>(_self.parametresMeteo, (value) {
    return _then(_self.copyWith(parametresMeteo: value));
  });
}
}

// dart format on
