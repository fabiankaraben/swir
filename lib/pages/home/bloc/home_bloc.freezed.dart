// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeEventTearOff {
  const _$HomeEventTearOff();

  HomeListEvent fetchSummary() {
    return const HomeListEvent();
  }

  DownloadDataPressed downloadDataPressed() {
    return const DownloadDataPressed();
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSummary,
    required TResult Function() downloadDataPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeListEvent value) fetchSummary,
    required TResult Function(DownloadDataPressed value) downloadDataPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;
}

/// @nodoc
abstract class $HomeListEventCopyWith<$Res> {
  factory $HomeListEventCopyWith(
          HomeListEvent value, $Res Function(HomeListEvent) then) =
      _$HomeListEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeListEventCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements $HomeListEventCopyWith<$Res> {
  _$HomeListEventCopyWithImpl(
      HomeListEvent _value, $Res Function(HomeListEvent) _then)
      : super(_value, (v) => _then(v as HomeListEvent));

  @override
  HomeListEvent get _value => super._value as HomeListEvent;
}

/// @nodoc

class _$HomeListEvent with DiagnosticableTreeMixin implements HomeListEvent {
  const _$HomeListEvent();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.fetchSummary()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.fetchSummary'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HomeListEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSummary,
    required TResult Function() downloadDataPressed,
  }) {
    return fetchSummary();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
  }) {
    return fetchSummary?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
    required TResult orElse(),
  }) {
    if (fetchSummary != null) {
      return fetchSummary();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeListEvent value) fetchSummary,
    required TResult Function(DownloadDataPressed value) downloadDataPressed,
  }) {
    return fetchSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
  }) {
    return fetchSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
    required TResult orElse(),
  }) {
    if (fetchSummary != null) {
      return fetchSummary(this);
    }
    return orElse();
  }
}

abstract class HomeListEvent implements HomeEvent {
  const factory HomeListEvent() = _$HomeListEvent;
}

/// @nodoc
abstract class $DownloadDataPressedCopyWith<$Res> {
  factory $DownloadDataPressedCopyWith(
          DownloadDataPressed value, $Res Function(DownloadDataPressed) then) =
      _$DownloadDataPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$DownloadDataPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements $DownloadDataPressedCopyWith<$Res> {
  _$DownloadDataPressedCopyWithImpl(
      DownloadDataPressed _value, $Res Function(DownloadDataPressed) _then)
      : super(_value, (v) => _then(v as DownloadDataPressed));

  @override
  DownloadDataPressed get _value => super._value as DownloadDataPressed;
}

/// @nodoc

class _$DownloadDataPressed
    with DiagnosticableTreeMixin
    implements DownloadDataPressed {
  const _$DownloadDataPressed();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.downloadDataPressed()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.downloadDataPressed'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DownloadDataPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchSummary,
    required TResult Function() downloadDataPressed,
  }) {
    return downloadDataPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
  }) {
    return downloadDataPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchSummary,
    TResult Function()? downloadDataPressed,
    required TResult orElse(),
  }) {
    if (downloadDataPressed != null) {
      return downloadDataPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeListEvent value) fetchSummary,
    required TResult Function(DownloadDataPressed value) downloadDataPressed,
  }) {
    return downloadDataPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
  }) {
    return downloadDataPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeListEvent value)? fetchSummary,
    TResult Function(DownloadDataPressed value)? downloadDataPressed,
    required TResult orElse(),
  }) {
    if (downloadDataPressed != null) {
      return downloadDataPressed(this);
    }
    return orElse();
  }
}

abstract class DownloadDataPressed implements HomeEvent {
  const factory DownloadDataPressed() = _$DownloadDataPressed;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeListLoading loading() {
    return const _HomeListLoading();
  }

  _HomeListEmpty empty() {
    return const _HomeListEmpty();
  }

  _HomeListContent content(
      {required List<Person> list, bool downloadingData = false}) {
    return _HomeListContent(
      list: list,
      downloadingData: downloadingData,
    );
  }

  _HomeListError error() {
    return const _HomeListError();
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Person> list, bool downloadingData) content,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeListLoading value) loading,
    required TResult Function(_HomeListEmpty value) empty,
    required TResult Function(_HomeListContent value) content,
    required TResult Function(_HomeListError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$HomeListLoadingCopyWith<$Res> {
  factory _$HomeListLoadingCopyWith(
          _HomeListLoading value, $Res Function(_HomeListLoading) then) =
      __$HomeListLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeListLoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeListLoadingCopyWith<$Res> {
  __$HomeListLoadingCopyWithImpl(
      _HomeListLoading _value, $Res Function(_HomeListLoading) _then)
      : super(_value, (v) => _then(v as _HomeListLoading));

  @override
  _HomeListLoading get _value => super._value as _HomeListLoading;
}

/// @nodoc

class _$_HomeListLoading
    with DiagnosticableTreeMixin
    implements _HomeListLoading {
  const _$_HomeListLoading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeListLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Person> list, bool downloadingData) content,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeListLoading value) loading,
    required TResult Function(_HomeListEmpty value) empty,
    required TResult Function(_HomeListContent value) content,
    required TResult Function(_HomeListError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeListLoading implements HomeState {
  const factory _HomeListLoading() = _$_HomeListLoading;
}

/// @nodoc
abstract class _$HomeListEmptyCopyWith<$Res> {
  factory _$HomeListEmptyCopyWith(
          _HomeListEmpty value, $Res Function(_HomeListEmpty) then) =
      __$HomeListEmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeListEmptyCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeListEmptyCopyWith<$Res> {
  __$HomeListEmptyCopyWithImpl(
      _HomeListEmpty _value, $Res Function(_HomeListEmpty) _then)
      : super(_value, (v) => _then(v as _HomeListEmpty));

  @override
  _HomeListEmpty get _value => super._value as _HomeListEmpty;
}

/// @nodoc

class _$_HomeListEmpty with DiagnosticableTreeMixin implements _HomeListEmpty {
  const _$_HomeListEmpty();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.empty'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeListEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Person> list, bool downloadingData) content,
    required TResult Function() error,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeListLoading value) loading,
    required TResult Function(_HomeListEmpty value) empty,
    required TResult Function(_HomeListContent value) content,
    required TResult Function(_HomeListError value) error,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _HomeListEmpty implements HomeState {
  const factory _HomeListEmpty() = _$_HomeListEmpty;
}

/// @nodoc
abstract class _$HomeListContentCopyWith<$Res> {
  factory _$HomeListContentCopyWith(
          _HomeListContent value, $Res Function(_HomeListContent) then) =
      __$HomeListContentCopyWithImpl<$Res>;
  $Res call({List<Person> list, bool downloadingData});
}

/// @nodoc
class __$HomeListContentCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeListContentCopyWith<$Res> {
  __$HomeListContentCopyWithImpl(
      _HomeListContent _value, $Res Function(_HomeListContent) _then)
      : super(_value, (v) => _then(v as _HomeListContent));

  @override
  _HomeListContent get _value => super._value as _HomeListContent;

  @override
  $Res call({
    Object? list = freezed,
    Object? downloadingData = freezed,
  }) {
    return _then(_HomeListContent(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      downloadingData: downloadingData == freezed
          ? _value.downloadingData
          : downloadingData // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeListContent
    with DiagnosticableTreeMixin
    implements _HomeListContent {
  const _$_HomeListContent({required this.list, this.downloadingData = false});

  @override
  final List<Person> list;
  @JsonKey()
  @override
  final bool downloadingData;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.content(list: $list, downloadingData: $downloadingData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.content'))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('downloadingData', downloadingData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeListContent &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality()
                .equals(other.downloadingData, downloadingData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(downloadingData));

  @JsonKey(ignore: true)
  @override
  _$HomeListContentCopyWith<_HomeListContent> get copyWith =>
      __$HomeListContentCopyWithImpl<_HomeListContent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Person> list, bool downloadingData) content,
    required TResult Function() error,
  }) {
    return content(list, downloadingData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
  }) {
    return content?.call(list, downloadingData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(list, downloadingData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeListLoading value) loading,
    required TResult Function(_HomeListEmpty value) empty,
    required TResult Function(_HomeListContent value) content,
    required TResult Function(_HomeListError value) error,
  }) {
    return content(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
  }) {
    return content?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
    required TResult orElse(),
  }) {
    if (content != null) {
      return content(this);
    }
    return orElse();
  }
}

abstract class _HomeListContent implements HomeState {
  const factory _HomeListContent(
      {required List<Person> list, bool downloadingData}) = _$_HomeListContent;

  List<Person> get list;
  bool get downloadingData;
  @JsonKey(ignore: true)
  _$HomeListContentCopyWith<_HomeListContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$HomeListErrorCopyWith<$Res> {
  factory _$HomeListErrorCopyWith(
          _HomeListError value, $Res Function(_HomeListError) then) =
      __$HomeListErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$HomeListErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeListErrorCopyWith<$Res> {
  __$HomeListErrorCopyWithImpl(
      _HomeListError _value, $Res Function(_HomeListError) _then)
      : super(_value, (v) => _then(v as _HomeListError));

  @override
  _HomeListError get _value => super._value as _HomeListError;
}

/// @nodoc

class _$_HomeListError with DiagnosticableTreeMixin implements _HomeListError {
  const _$_HomeListError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.error()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeState.error'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _HomeListError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() empty,
    required TResult Function(List<Person> list, bool downloadingData) content,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? empty,
    TResult Function(List<Person> list, bool downloadingData)? content,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeListLoading value) loading,
    required TResult Function(_HomeListEmpty value) empty,
    required TResult Function(_HomeListContent value) content,
    required TResult Function(_HomeListError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeListLoading value)? loading,
    TResult Function(_HomeListEmpty value)? empty,
    TResult Function(_HomeListContent value)? content,
    TResult Function(_HomeListError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _HomeListError implements HomeState {
  const factory _HomeListError() = _$_HomeListError;
}
