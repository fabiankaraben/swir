// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DetailsEventTearOff {
  const _$DetailsEventTearOff();

  _Started started() {
    return const _Started();
  }

  _ReportRequested reportRequested({required Person person}) {
    return _ReportRequested(
      person: person,
    );
  }
}

/// @nodoc
const $DetailsEvent = _$DetailsEventTearOff();

/// @nodoc
mixin _$DetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Person person) reportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReportRequested value) reportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsEventCopyWith<$Res> {
  factory $DetailsEventCopyWith(
          DetailsEvent value, $Res Function(DetailsEvent) then) =
      _$DetailsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DetailsEventCopyWithImpl<$Res> implements $DetailsEventCopyWith<$Res> {
  _$DetailsEventCopyWithImpl(this._value, this._then);

  final DetailsEvent _value;
  // ignore: unused_field
  final $Res Function(DetailsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$DetailsEventCopyWithImpl<$Res>
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
    return 'DetailsEvent.started()';
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
    required TResult Function(Person person) reportRequested,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
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
    required TResult Function(_ReportRequested value) reportRequested,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DetailsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$ReportRequestedCopyWith<$Res> {
  factory _$ReportRequestedCopyWith(
          _ReportRequested value, $Res Function(_ReportRequested) then) =
      __$ReportRequestedCopyWithImpl<$Res>;
  $Res call({Person person});

  $PersonCopyWith<$Res> get person;
}

/// @nodoc
class __$ReportRequestedCopyWithImpl<$Res>
    extends _$DetailsEventCopyWithImpl<$Res>
    implements _$ReportRequestedCopyWith<$Res> {
  __$ReportRequestedCopyWithImpl(
      _ReportRequested _value, $Res Function(_ReportRequested) _then)
      : super(_value, (v) => _then(v as _ReportRequested));

  @override
  _ReportRequested get _value => super._value as _ReportRequested;

  @override
  $Res call({
    Object? person = freezed,
  }) {
    return _then(_ReportRequested(
      person: person == freezed
          ? _value.person
          : person // ignore: cast_nullable_to_non_nullable
              as Person,
    ));
  }

  @override
  $PersonCopyWith<$Res> get person {
    return $PersonCopyWith<$Res>(_value.person, (value) {
      return _then(_value.copyWith(person: value));
    });
  }
}

/// @nodoc

class _$_ReportRequested implements _ReportRequested {
  const _$_ReportRequested({required this.person});

  @override
  final Person person;

  @override
  String toString() {
    return 'DetailsEvent.reportRequested(person: $person)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReportRequested &&
            const DeepCollectionEquality().equals(other.person, person));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(person));

  @JsonKey(ignore: true)
  @override
  _$ReportRequestedCopyWith<_ReportRequested> get copyWith =>
      __$ReportRequestedCopyWithImpl<_ReportRequested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Person person) reportRequested,
  }) {
    return reportRequested(person);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
  }) {
    return reportRequested?.call(person);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Person person)? reportRequested,
    required TResult orElse(),
  }) {
    if (reportRequested != null) {
      return reportRequested(person);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReportRequested value) reportRequested,
  }) {
    return reportRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
  }) {
    return reportRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReportRequested value)? reportRequested,
    required TResult orElse(),
  }) {
    if (reportRequested != null) {
      return reportRequested(this);
    }
    return orElse();
  }
}

abstract class _ReportRequested implements DetailsEvent {
  const factory _ReportRequested({required Person person}) = _$_ReportRequested;

  Person get person;
  @JsonKey(ignore: true)
  _$ReportRequestedCopyWith<_ReportRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DetailsStateTearOff {
  const _$DetailsStateTearOff();

  _DetailsStateAll all({bool isSendingReport = false, String error = ''}) {
    return _DetailsStateAll(
      isSendingReport: isSendingReport,
      error: error,
    );
  }
}

/// @nodoc
const $DetailsState = _$DetailsStateTearOff();

/// @nodoc
mixin _$DetailsState {
  bool get isSendingReport => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSendingReport, String error) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSendingReport, String error)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSendingReport, String error)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsStateAll value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsStateAll value)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsStateAll value)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsStateCopyWith<DetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsStateCopyWith<$Res> {
  factory $DetailsStateCopyWith(
          DetailsState value, $Res Function(DetailsState) then) =
      _$DetailsStateCopyWithImpl<$Res>;
  $Res call({bool isSendingReport, String error});
}

/// @nodoc
class _$DetailsStateCopyWithImpl<$Res> implements $DetailsStateCopyWith<$Res> {
  _$DetailsStateCopyWithImpl(this._value, this._then);

  final DetailsState _value;
  // ignore: unused_field
  final $Res Function(DetailsState) _then;

  @override
  $Res call({
    Object? isSendingReport = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isSendingReport: isSendingReport == freezed
          ? _value.isSendingReport
          : isSendingReport // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$DetailsStateAllCopyWith<$Res>
    implements $DetailsStateCopyWith<$Res> {
  factory _$DetailsStateAllCopyWith(
          _DetailsStateAll value, $Res Function(_DetailsStateAll) then) =
      __$DetailsStateAllCopyWithImpl<$Res>;
  @override
  $Res call({bool isSendingReport, String error});
}

/// @nodoc
class __$DetailsStateAllCopyWithImpl<$Res>
    extends _$DetailsStateCopyWithImpl<$Res>
    implements _$DetailsStateAllCopyWith<$Res> {
  __$DetailsStateAllCopyWithImpl(
      _DetailsStateAll _value, $Res Function(_DetailsStateAll) _then)
      : super(_value, (v) => _then(v as _DetailsStateAll));

  @override
  _DetailsStateAll get _value => super._value as _DetailsStateAll;

  @override
  $Res call({
    Object? isSendingReport = freezed,
    Object? error = freezed,
  }) {
    return _then(_DetailsStateAll(
      isSendingReport: isSendingReport == freezed
          ? _value.isSendingReport
          : isSendingReport // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DetailsStateAll implements _DetailsStateAll {
  const _$_DetailsStateAll({this.isSendingReport = false, this.error = ''});

  @JsonKey()
  @override
  final bool isSendingReport;
  @JsonKey()
  @override
  final String error;

  @override
  String toString() {
    return 'DetailsState.all(isSendingReport: $isSendingReport, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DetailsStateAll &&
            const DeepCollectionEquality()
                .equals(other.isSendingReport, isSendingReport) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isSendingReport),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$DetailsStateAllCopyWith<_DetailsStateAll> get copyWith =>
      __$DetailsStateAllCopyWithImpl<_DetailsStateAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isSendingReport, String error) all,
  }) {
    return all(isSendingReport, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isSendingReport, String error)? all,
  }) {
    return all?.call(isSendingReport, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isSendingReport, String error)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(isSendingReport, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailsStateAll value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_DetailsStateAll value)? all,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailsStateAll value)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class _DetailsStateAll implements DetailsState {
  const factory _DetailsStateAll({bool isSendingReport, String error}) =
      _$_DetailsStateAll;

  @override
  bool get isSendingReport;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$DetailsStateAllCopyWith<_DetailsStateAll> get copyWith =>
      throw _privateConstructorUsedError;
}
