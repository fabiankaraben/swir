import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:swir/data/models/models.dart';

part 'person.freezed.dart';
part 'person.g.dart';

@freezed
class Person with _$Person {
  const factory Person({
    String? name,
    String? height,
    String? mass,
    String? gender,
    @JsonKey(name: 'hair_color') String? hairColor,
    @JsonKey(name: 'skin_color') String? skinColor,
    @JsonKey(name: 'eye_color') String? eyeColor,
    String? homeworld,
    @JsonKey(ignore: true) List<Starship>? starships,
    @JsonKey(ignore: true) List<Vehicle>? vehicles,

    // @JsonKey(name: 'birth_year') String? birthYear,
    // List<String>? films,
    // List<String>? species,
    // String? url,
    // String? created,
    // String? edited,
  }) = _Person;

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
