// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'starship.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Starship _$StarshipFromJson(Map<String, dynamic> json) {
  return _Starship.fromJson(json);
}

/// @nodoc
class _$StarshipTearOff {
  const _$StarshipTearOff();

  _Starship call({required String name}) {
    return _Starship(
      name: name,
    );
  }

  Starship fromJson(Map<String, Object?> json) {
    return Starship.fromJson(json);
  }
}

/// @nodoc
const $Starship = _$StarshipTearOff();

/// @nodoc
mixin _$Starship {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StarshipCopyWith<Starship> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StarshipCopyWith<$Res> {
  factory $StarshipCopyWith(Starship value, $Res Function(Starship) then) =
      _$StarshipCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$StarshipCopyWithImpl<$Res> implements $StarshipCopyWith<$Res> {
  _$StarshipCopyWithImpl(this._value, this._then);

  final Starship _value;
  // ignore: unused_field
  final $Res Function(Starship) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StarshipCopyWith<$Res> implements $StarshipCopyWith<$Res> {
  factory _$StarshipCopyWith(_Starship value, $Res Function(_Starship) then) =
      __$StarshipCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$StarshipCopyWithImpl<$Res> extends _$StarshipCopyWithImpl<$Res>
    implements _$StarshipCopyWith<$Res> {
  __$StarshipCopyWithImpl(_Starship _value, $Res Function(_Starship) _then)
      : super(_value, (v) => _then(v as _Starship));

  @override
  _Starship get _value => super._value as _Starship;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_Starship(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Starship with DiagnosticableTreeMixin implements _Starship {
  const _$_Starship({required this.name});

  factory _$_Starship.fromJson(Map<String, dynamic> json) =>
      _$$_StarshipFromJson(json);

  @override
  final String name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Starship(name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Starship'))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Starship &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$StarshipCopyWith<_Starship> get copyWith =>
      __$StarshipCopyWithImpl<_Starship>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StarshipToJson(this);
  }
}

abstract class _Starship implements Starship {
  const factory _Starship({required String name}) = _$_Starship;

  factory _Starship.fromJson(Map<String, dynamic> json) = _$_Starship.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$StarshipCopyWith<_Starship> get copyWith =>
      throw _privateConstructorUsedError;
}
