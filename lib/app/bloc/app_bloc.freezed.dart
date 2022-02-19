// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppEventTearOff {
  const _$AppEventTearOff();

  _Started started() {
    return const _Started();
  }

  _Connected connected() {
    return const _Connected();
  }

  _Disconnected disconnected() {
    return const _Disconnected();
  }

  _ChangeLanguage changeLanguage(String lang) {
    return _ChangeLanguage(
      lang,
    );
  }
}

/// @nodoc
const $AppEvent = _$AppEventTearOff();

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String lang) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res> implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  final AppEvent _value;
  // ignore: unused_field
  final $Res Function(AppEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String lang) changeLanguage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ConnectedCopyWith<$Res> {
  factory _$ConnectedCopyWith(
          _Connected value, $Res Function(_Connected) then) =
      __$ConnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$ConnectedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$ConnectedCopyWith<$Res> {
  __$ConnectedCopyWithImpl(_Connected _value, $Res Function(_Connected) _then)
      : super(_value, (v) => _then(v as _Connected));

  @override
  _Connected get _value => super._value as _Connected;
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected();

  @override
  String toString() {
    return 'AppEvent.connected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Connected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String lang) changeLanguage,
  }) {
    return connected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
  }) {
    return connected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements AppEvent {
  const factory _Connected() = _$_Connected;
}

/// @nodoc
abstract class _$DisconnectedCopyWith<$Res> {
  factory _$DisconnectedCopyWith(
          _Disconnected value, $Res Function(_Disconnected) then) =
      __$DisconnectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DisconnectedCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$DisconnectedCopyWith<$Res> {
  __$DisconnectedCopyWithImpl(
      _Disconnected _value, $Res Function(_Disconnected) _then)
      : super(_value, (v) => _then(v as _Disconnected));

  @override
  _Disconnected get _value => super._value as _Disconnected;
}

/// @nodoc

class _$_Disconnected implements _Disconnected {
  const _$_Disconnected();

  @override
  String toString() {
    return 'AppEvent.disconnected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Disconnected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String lang) changeLanguage,
  }) {
    return disconnected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
  }) {
    return disconnected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements AppEvent {
  const factory _Disconnected() = _$_Disconnected;
}

/// @nodoc
abstract class _$ChangeLanguageCopyWith<$Res> {
  factory _$ChangeLanguageCopyWith(
          _ChangeLanguage value, $Res Function(_ChangeLanguage) then) =
      __$ChangeLanguageCopyWithImpl<$Res>;
  $Res call({String lang});
}

/// @nodoc
class __$ChangeLanguageCopyWithImpl<$Res> extends _$AppEventCopyWithImpl<$Res>
    implements _$ChangeLanguageCopyWith<$Res> {
  __$ChangeLanguageCopyWithImpl(
      _ChangeLanguage _value, $Res Function(_ChangeLanguage) _then)
      : super(_value, (v) => _then(v as _ChangeLanguage));

  @override
  _ChangeLanguage get _value => super._value as _ChangeLanguage;

  @override
  $Res call({
    Object? lang = freezed,
  }) {
    return _then(_ChangeLanguage(
      lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeLanguage implements _ChangeLanguage {
  const _$_ChangeLanguage(this.lang);

  @override
  final String lang;

  @override
  String toString() {
    return 'AppEvent.changeLanguage(lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangeLanguage &&
            const DeepCollectionEquality().equals(other.lang, lang));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(lang));

  @JsonKey(ignore: true)
  @override
  _$ChangeLanguageCopyWith<_ChangeLanguage> get copyWith =>
      __$ChangeLanguageCopyWithImpl<_ChangeLanguage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() connected,
    required TResult Function() disconnected,
    required TResult Function(String lang) changeLanguage,
  }) {
    return changeLanguage(lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
  }) {
    return changeLanguage?.call(lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? connected,
    TResult Function()? disconnected,
    TResult Function(String lang)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_ChangeLanguage value) changeLanguage,
  }) {
    return changeLanguage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
  }) {
    return changeLanguage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_ChangeLanguage value)? changeLanguage,
    required TResult orElse(),
  }) {
    if (changeLanguage != null) {
      return changeLanguage(this);
    }
    return orElse();
  }
}

abstract class _ChangeLanguage implements AppEvent {
  const factory _ChangeLanguage(String lang) = _$_ChangeLanguage;

  String get lang;
  @JsonKey(ignore: true)
  _$ChangeLanguageCopyWith<_ChangeLanguage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppStateTearOff {
  const _$AppStateTearOff();

  _Initial initial({bool online = false, String lang = 'en'}) {
    return _Initial(
      online: online,
      lang: lang,
    );
  }
}

/// @nodoc
const $AppState = _$AppStateTearOff();

/// @nodoc
mixin _$AppState {
  bool get online => throw _privateConstructorUsedError;
  String get lang => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online, String lang) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online, String lang)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online, String lang)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res>;
  $Res call({bool online, String lang});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res> implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  final AppState _value;
  // ignore: unused_field
  final $Res Function(AppState) _then;

  @override
  $Res call({
    Object? online = freezed,
    Object? lang = freezed,
  }) {
    return _then(_value.copyWith(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> implements $AppStateCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  @override
  $Res call({bool online, String lang});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$AppStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? online = freezed,
    Object? lang = freezed,
  }) {
    return _then(_Initial(
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      lang: lang == freezed
          ? _value.lang
          : lang // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({this.online = false, this.lang = 'en'});

  @JsonKey()
  @override
  final bool online;
  @JsonKey()
  @override
  final String lang;

  @override
  String toString() {
    return 'AppState.initial(online: $online, lang: $lang)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Initial &&
            const DeepCollectionEquality().equals(other.online, online) &&
            const DeepCollectionEquality().equals(other.lang, lang));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(online),
      const DeepCollectionEquality().hash(lang));

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool online, String lang) initial,
  }) {
    return initial(online, lang);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool online, String lang)? initial,
  }) {
    return initial?.call(online, lang);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool online, String lang)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(online, lang);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial({bool online, String lang}) = _$_Initial;

  @override
  bool get online;
  @override
  String get lang;
  @override
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
