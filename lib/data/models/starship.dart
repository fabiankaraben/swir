import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'starship.freezed.dart';
part 'starship.g.dart';

@freezed
class Starship with _$Starship {
  const factory Starship({
    String? name,
    String? model,
    @JsonKey(name: 'starship_class') String? starshipClass,
  }) = _Starship;

  factory Starship.fromJson(Map<String, dynamic> json) =>
      _$StarshipFromJson(json);
}
