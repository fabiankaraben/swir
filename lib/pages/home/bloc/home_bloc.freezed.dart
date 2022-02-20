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

  _Started started() {
    return const _Started();
  }

  _DownloadDataPressed downloadDataPressed() {
    return const _DownloadDataPressed();
  }

  _SearchCriteriaChanged searchCriteriaChanged({required String criteria}) {
    return _SearchCriteriaChanged(
      criteria: criteria,
    );
  }
}

/// @nodoc
const $HomeEvent = _$HomeEventTearOff();

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() downloadDataPressed,
    required TResult Function(String criteria) searchCriteriaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DownloadDataPressed value) downloadDataPressed,
    required TResult Function(_SearchCriteriaChanged value)
        searchCriteriaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
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
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started with DiagnosticableTreeMixin implements _Started {
  const _$_Started();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.started()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeEvent.started'));
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
    required TResult Function() downloadDataPressed,
    required TResult Function(String criteria) searchCriteriaChanged,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
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
    required TResult Function(_DownloadDataPressed value) downloadDataPressed,
    required TResult Function(_SearchCriteriaChanged value)
        searchCriteriaChanged,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements HomeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$DownloadDataPressedCopyWith<$Res> {
  factory _$DownloadDataPressedCopyWith(_DownloadDataPressed value,
          $Res Function(_DownloadDataPressed) then) =
      __$DownloadDataPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$DownloadDataPressedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$DownloadDataPressedCopyWith<$Res> {
  __$DownloadDataPressedCopyWithImpl(
      _DownloadDataPressed _value, $Res Function(_DownloadDataPressed) _then)
      : super(_value, (v) => _then(v as _DownloadDataPressed));

  @override
  _DownloadDataPressed get _value => super._value as _DownloadDataPressed;
}

/// @nodoc

class _$_DownloadDataPressed
    with DiagnosticableTreeMixin
    implements _DownloadDataPressed {
  const _$_DownloadDataPressed();

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
        (other.runtimeType == runtimeType && other is _DownloadDataPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() downloadDataPressed,
    required TResult Function(String criteria) searchCriteriaChanged,
  }) {
    return downloadDataPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
  }) {
    return downloadDataPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
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
    required TResult Function(_Started value) started,
    required TResult Function(_DownloadDataPressed value) downloadDataPressed,
    required TResult Function(_SearchCriteriaChanged value)
        searchCriteriaChanged,
  }) {
    return downloadDataPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
  }) {
    return downloadDataPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
    required TResult orElse(),
  }) {
    if (downloadDataPressed != null) {
      return downloadDataPressed(this);
    }
    return orElse();
  }
}

abstract class _DownloadDataPressed implements HomeEvent {
  const factory _DownloadDataPressed() = _$_DownloadDataPressed;
}

/// @nodoc
abstract class _$SearchCriteriaChangedCopyWith<$Res> {
  factory _$SearchCriteriaChangedCopyWith(_SearchCriteriaChanged value,
          $Res Function(_SearchCriteriaChanged) then) =
      __$SearchCriteriaChangedCopyWithImpl<$Res>;
  $Res call({String criteria});
}

/// @nodoc
class __$SearchCriteriaChangedCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res>
    implements _$SearchCriteriaChangedCopyWith<$Res> {
  __$SearchCriteriaChangedCopyWithImpl(_SearchCriteriaChanged _value,
      $Res Function(_SearchCriteriaChanged) _then)
      : super(_value, (v) => _then(v as _SearchCriteriaChanged));

  @override
  _SearchCriteriaChanged get _value => super._value as _SearchCriteriaChanged;

  @override
  $Res call({
    Object? criteria = freezed,
  }) {
    return _then(_SearchCriteriaChanged(
      criteria: criteria == freezed
          ? _value.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchCriteriaChanged
    with DiagnosticableTreeMixin
    implements _SearchCriteriaChanged {
  const _$_SearchCriteriaChanged({required this.criteria});

  @override
  final String criteria;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeEvent.searchCriteriaChanged(criteria: $criteria)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeEvent.searchCriteriaChanged'))
      ..add(DiagnosticsProperty('criteria', criteria));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchCriteriaChanged &&
            const DeepCollectionEquality().equals(other.criteria, criteria));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(criteria));

  @JsonKey(ignore: true)
  @override
  _$SearchCriteriaChangedCopyWith<_SearchCriteriaChanged> get copyWith =>
      __$SearchCriteriaChangedCopyWithImpl<_SearchCriteriaChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() downloadDataPressed,
    required TResult Function(String criteria) searchCriteriaChanged,
  }) {
    return searchCriteriaChanged(criteria);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
  }) {
    return searchCriteriaChanged?.call(criteria);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? downloadDataPressed,
    TResult Function(String criteria)? searchCriteriaChanged,
    required TResult orElse(),
  }) {
    if (searchCriteriaChanged != null) {
      return searchCriteriaChanged(criteria);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DownloadDataPressed value) downloadDataPressed,
    required TResult Function(_SearchCriteriaChanged value)
        searchCriteriaChanged,
  }) {
    return searchCriteriaChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
  }) {
    return searchCriteriaChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DownloadDataPressed value)? downloadDataPressed,
    TResult Function(_SearchCriteriaChanged value)? searchCriteriaChanged,
    required TResult orElse(),
  }) {
    if (searchCriteriaChanged != null) {
      return searchCriteriaChanged(this);
    }
    return orElse();
  }
}

abstract class _SearchCriteriaChanged implements HomeEvent {
  const factory _SearchCriteriaChanged({required String criteria}) =
      _$_SearchCriteriaChanged;

  String get criteria;
  @JsonKey(ignore: true)
  _$SearchCriteriaChangedCopyWith<_SearchCriteriaChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeStateAll all(
      {bool isLoading = false,
      List<Person> list = const [],
      String searchCriteria = '',
      bool isDownloadingData = false,
      String error = ''}) {
    return _HomeStateAll(
      isLoading: isLoading,
      list: list,
      searchCriteria: searchCriteria,
      isDownloadingData: isDownloadingData,
      error: error,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Person> get list => throw _privateConstructorUsedError;
  String get searchCriteria => throw _privateConstructorUsedError;
  bool get isDownloadingData => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Person> list,
            String searchCriteria, bool isDownloadingData, String error)
        all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, List<Person> list, String searchCriteria,
            bool isDownloadingData, String error)?
        all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Person> list, String searchCriteria,
            bool isDownloadingData, String error)?
        all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateAll value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateAll value)? all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateAll value)? all,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Person> list,
      String searchCriteria,
      bool isDownloadingData,
      String error});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? list = freezed,
    Object? searchCriteria = freezed,
    Object? isDownloadingData = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      searchCriteria: searchCriteria == freezed
          ? _value.searchCriteria
          : searchCriteria // ignore: cast_nullable_to_non_nullable
              as String,
      isDownloadingData: isDownloadingData == freezed
          ? _value.isDownloadingData
          : isDownloadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateAllCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateAllCopyWith(
          _HomeStateAll value, $Res Function(_HomeStateAll) then) =
      __$HomeStateAllCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Person> list,
      String searchCriteria,
      bool isDownloadingData,
      String error});
}

/// @nodoc
class __$HomeStateAllCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateAllCopyWith<$Res> {
  __$HomeStateAllCopyWithImpl(
      _HomeStateAll _value, $Res Function(_HomeStateAll) _then)
      : super(_value, (v) => _then(v as _HomeStateAll));

  @override
  _HomeStateAll get _value => super._value as _HomeStateAll;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? list = freezed,
    Object? searchCriteria = freezed,
    Object? isDownloadingData = freezed,
    Object? error = freezed,
  }) {
    return _then(_HomeStateAll(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Person>,
      searchCriteria: searchCriteria == freezed
          ? _value.searchCriteria
          : searchCriteria // ignore: cast_nullable_to_non_nullable
              as String,
      isDownloadingData: isDownloadingData == freezed
          ? _value.isDownloadingData
          : isDownloadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HomeStateAll with DiagnosticableTreeMixin implements _HomeStateAll {
  const _$_HomeStateAll(
      {this.isLoading = false,
      this.list = const [],
      this.searchCriteria = '',
      this.isDownloadingData = false,
      this.error = ''});

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<Person> list;
  @JsonKey()
  @override
  final String searchCriteria;
  @JsonKey()
  @override
  final bool isDownloadingData;
  @JsonKey()
  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeState.all(isLoading: $isLoading, list: $list, searchCriteria: $searchCriteria, isDownloadingData: $isDownloadingData, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeState.all'))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('list', list))
      ..add(DiagnosticsProperty('searchCriteria', searchCriteria))
      ..add(DiagnosticsProperty('isDownloadingData', isDownloadingData))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeStateAll &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.list, list) &&
            const DeepCollectionEquality()
                .equals(other.searchCriteria, searchCriteria) &&
            const DeepCollectionEquality()
                .equals(other.isDownloadingData, isDownloadingData) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(list),
      const DeepCollectionEquality().hash(searchCriteria),
      const DeepCollectionEquality().hash(isDownloadingData),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$HomeStateAllCopyWith<_HomeStateAll> get copyWith =>
      __$HomeStateAllCopyWithImpl<_HomeStateAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, List<Person> list,
            String searchCriteria, bool isDownloadingData, String error)
        all,
  }) {
    return all(isLoading, list, searchCriteria, isDownloadingData, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isLoading, List<Person> list, String searchCriteria,
            bool isDownloadingData, String error)?
        all,
  }) {
    return all?.call(isLoading, list, searchCriteria, isDownloadingData, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, List<Person> list, String searchCriteria,
            bool isDownloadingData, String error)?
        all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(isLoading, list, searchCriteria, isDownloadingData, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeStateAll value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_HomeStateAll value)? all,
  }) {
    return all?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeStateAll value)? all,
    required TResult orElse(),
  }) {
    if (all != null) {
      return all(this);
    }
    return orElse();
  }
}

abstract class _HomeStateAll implements HomeState {
  const factory _HomeStateAll(
      {bool isLoading,
      List<Person> list,
      String searchCriteria,
      bool isDownloadingData,
      String error}) = _$_HomeStateAll;

  @override
  bool get isLoading;
  @override
  List<Person> get list;
  @override
  String get searchCriteria;
  @override
  bool get isDownloadingData;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$HomeStateAllCopyWith<_HomeStateAll> get copyWith =>
      throw _privateConstructorUsedError;
}
