// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'person.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Person _$PersonFromJson(Map<String, dynamic> json) {
  return _Person.fromJson(json);
}

/// @nodoc
class _$PersonTearOff {
  const _$PersonTearOff();

  _Person call(
      {required int id,
      required String name,
      required String height,
      required String mass,
      required String gender,
      @JsonKey(name: 'hair_color') required String hairColor,
      @JsonKey(name: 'skin_color') required String skinColor,
      @JsonKey(name: 'eye_color') required String eyeColor,
      @JsonKey(ignore: true) String? homeworld,
      @JsonKey(ignore: true) List<Starship>? starships,
      @JsonKey(ignore: true) List<Vehicle>? vehicles}) {
    return _Person(
      id: id,
      name: name,
      height: height,
      mass: mass,
      gender: gender,
      hairColor: hairColor,
      skinColor: skinColor,
      eyeColor: eyeColor,
      homeworld: homeworld,
      starships: starships,
      vehicles: vehicles,
    );
  }

  Person fromJson(Map<String, Object?> json) {
    return Person.fromJson(json);
  }
}

/// @nodoc
const $Person = _$PersonTearOff();

/// @nodoc
mixin _$Person {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get height => throw _privateConstructorUsedError;
  String get mass => throw _privateConstructorUsedError;
  String get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'hair_color')
  String get hairColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'skin_color')
  String get skinColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'eye_color')
  String get eyeColor => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  String? get homeworld => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Starship>? get starships => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  List<Vehicle>? get vehicles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonCopyWith<Person> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonCopyWith<$Res> {
  factory $PersonCopyWith(Person value, $Res Function(Person) then) =
      _$PersonCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String name,
      String height,
      String mass,
      String gender,
      @JsonKey(name: 'hair_color') String hairColor,
      @JsonKey(name: 'skin_color') String skinColor,
      @JsonKey(name: 'eye_color') String eyeColor,
      @JsonKey(ignore: true) String? homeworld,
      @JsonKey(ignore: true) List<Starship>? starships,
      @JsonKey(ignore: true) List<Vehicle>? vehicles});
}

/// @nodoc
class _$PersonCopyWithImpl<$Res> implements $PersonCopyWith<$Res> {
  _$PersonCopyWithImpl(this._value, this._then);

  final Person _value;
  // ignore: unused_field
  final $Res Function(Person) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? mass = freezed,
    Object? gender = freezed,
    Object? hairColor = freezed,
    Object? skinColor = freezed,
    Object? eyeColor = freezed,
    Object? homeworld = freezed,
    Object? starships = freezed,
    Object? vehicles = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      mass: mass == freezed
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hairColor: hairColor == freezed
          ? _value.hairColor
          : hairColor // ignore: cast_nullable_to_non_nullable
              as String,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<Starship>?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
abstract class _$PersonCopyWith<$Res> implements $PersonCopyWith<$Res> {
  factory _$PersonCopyWith(_Person value, $Res Function(_Person) then) =
      __$PersonCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String name,
      String height,
      String mass,
      String gender,
      @JsonKey(name: 'hair_color') String hairColor,
      @JsonKey(name: 'skin_color') String skinColor,
      @JsonKey(name: 'eye_color') String eyeColor,
      @JsonKey(ignore: true) String? homeworld,
      @JsonKey(ignore: true) List<Starship>? starships,
      @JsonKey(ignore: true) List<Vehicle>? vehicles});
}

/// @nodoc
class __$PersonCopyWithImpl<$Res> extends _$PersonCopyWithImpl<$Res>
    implements _$PersonCopyWith<$Res> {
  __$PersonCopyWithImpl(_Person _value, $Res Function(_Person) _then)
      : super(_value, (v) => _then(v as _Person));

  @override
  _Person get _value => super._value as _Person;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? height = freezed,
    Object? mass = freezed,
    Object? gender = freezed,
    Object? hairColor = freezed,
    Object? skinColor = freezed,
    Object? eyeColor = freezed,
    Object? homeworld = freezed,
    Object? starships = freezed,
    Object? vehicles = freezed,
  }) {
    return _then(_Person(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String,
      mass: mass == freezed
          ? _value.mass
          : mass // ignore: cast_nullable_to_non_nullable
              as String,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String,
      hairColor: hairColor == freezed
          ? _value.hairColor
          : hairColor // ignore: cast_nullable_to_non_nullable
              as String,
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as String,
      eyeColor: eyeColor == freezed
          ? _value.eyeColor
          : eyeColor // ignore: cast_nullable_to_non_nullable
              as String,
      homeworld: homeworld == freezed
          ? _value.homeworld
          : homeworld // ignore: cast_nullable_to_non_nullable
              as String?,
      starships: starships == freezed
          ? _value.starships
          : starships // ignore: cast_nullable_to_non_nullable
              as List<Starship>?,
      vehicles: vehicles == freezed
          ? _value.vehicles
          : vehicles // ignore: cast_nullable_to_non_nullable
              as List<Vehicle>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Person with DiagnosticableTreeMixin implements _Person {
  const _$_Person(
      {required this.id,
      required this.name,
      required this.height,
      required this.mass,
      required this.gender,
      @JsonKey(name: 'hair_color') required this.hairColor,
      @JsonKey(name: 'skin_color') required this.skinColor,
      @JsonKey(name: 'eye_color') required this.eyeColor,
      @JsonKey(ignore: true) this.homeworld,
      @JsonKey(ignore: true) this.starships,
      @JsonKey(ignore: true) this.vehicles});

  factory _$_Person.fromJson(Map<String, dynamic> json) =>
      _$$_PersonFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String height;
  @override
  final String mass;
  @override
  final String gender;
  @override
  @JsonKey(name: 'hair_color')
  final String hairColor;
  @override
  @JsonKey(name: 'skin_color')
  final String skinColor;
  @override
  @JsonKey(name: 'eye_color')
  final String eyeColor;
  @override
  @JsonKey(ignore: true)
  final String? homeworld;
  @override
  @JsonKey(ignore: true)
  final List<Starship>? starships;
  @override
  @JsonKey(ignore: true)
  final List<Vehicle>? vehicles;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Person(id: $id, name: $name, height: $height, mass: $mass, gender: $gender, hairColor: $hairColor, skinColor: $skinColor, eyeColor: $eyeColor, homeworld: $homeworld, starships: $starships, vehicles: $vehicles)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Person'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('mass', mass))
      ..add(DiagnosticsProperty('gender', gender))
      ..add(DiagnosticsProperty('hairColor', hairColor))
      ..add(DiagnosticsProperty('skinColor', skinColor))
      ..add(DiagnosticsProperty('eyeColor', eyeColor))
      ..add(DiagnosticsProperty('homeworld', homeworld))
      ..add(DiagnosticsProperty('starships', starships))
      ..add(DiagnosticsProperty('vehicles', vehicles));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Person &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.mass, mass) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.hairColor, hairColor) &&
            const DeepCollectionEquality().equals(other.skinColor, skinColor) &&
            const DeepCollectionEquality().equals(other.eyeColor, eyeColor) &&
            const DeepCollectionEquality().equals(other.homeworld, homeworld) &&
            const DeepCollectionEquality().equals(other.starships, starships) &&
            const DeepCollectionEquality().equals(other.vehicles, vehicles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(mass),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(hairColor),
      const DeepCollectionEquality().hash(skinColor),
      const DeepCollectionEquality().hash(eyeColor),
      const DeepCollectionEquality().hash(homeworld),
      const DeepCollectionEquality().hash(starships),
      const DeepCollectionEquality().hash(vehicles));

  @JsonKey(ignore: true)
  @override
  _$PersonCopyWith<_Person> get copyWith =>
      __$PersonCopyWithImpl<_Person>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PersonToJson(this);
  }
}

abstract class _Person implements Person {
  const factory _Person(
      {required int id,
      required String name,
      required String height,
      required String mass,
      required String gender,
      @JsonKey(name: 'hair_color') required String hairColor,
      @JsonKey(name: 'skin_color') required String skinColor,
      @JsonKey(name: 'eye_color') required String eyeColor,
      @JsonKey(ignore: true) String? homeworld,
      @JsonKey(ignore: true) List<Starship>? starships,
      @JsonKey(ignore: true) List<Vehicle>? vehicles}) = _$_Person;

  factory _Person.fromJson(Map<String, dynamic> json) = _$_Person.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get height;
  @override
  String get mass;
  @override
  String get gender;
  @override
  @JsonKey(name: 'hair_color')
  String get hairColor;
  @override
  @JsonKey(name: 'skin_color')
  String get skinColor;
  @override
  @JsonKey(name: 'eye_color')
  String get eyeColor;
  @override
  @JsonKey(ignore: true)
  String? get homeworld;
  @override
  @JsonKey(ignore: true)
  List<Starship>? get starships;
  @override
  @JsonKey(ignore: true)
  List<Vehicle>? get vehicles;
  @override
  @JsonKey(ignore: true)
  _$PersonCopyWith<_Person> get copyWith => throw _privateConstructorUsedError;
}
