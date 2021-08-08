// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'questionbank_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionbankEventTearOff {
  const _$QuestionbankEventTearOff();

  _Started started(int? id) {
    return _Started(
      id,
    );
  }

  _SubmitPressed submitPressed() {
    return const _SubmitPressed();
  }

  _OptionPressed optionPressed(String? option, int? currentIndex) {
    return _OptionPressed(
      option,
      currentIndex,
    );
  }
}

/// @nodoc
const $QuestionbankEvent = _$QuestionbankEventTearOff();

/// @nodoc
mixin _$QuestionbankEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) started,
    required TResult Function() submitPressed,
    required TResult Function(String? option, int? currentIndex) optionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? started,
    TResult Function()? submitPressed,
    TResult Function(String? option, int? currentIndex)? optionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_OptionPressed value) optionPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_OptionPressed value)? optionPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionbankEventCopyWith<$Res> {
  factory $QuestionbankEventCopyWith(
          QuestionbankEvent value, $Res Function(QuestionbankEvent) then) =
      _$QuestionbankEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionbankEventCopyWithImpl<$Res>
    implements $QuestionbankEventCopyWith<$Res> {
  _$QuestionbankEventCopyWithImpl(this._value, this._then);

  final QuestionbankEvent _value;
  // ignore: unused_field
  final $Res Function(QuestionbankEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({int? id});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$QuestionbankEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Started(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'QuestionbankEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) started,
    required TResult Function() submitPressed,
    required TResult Function(String? option, int? currentIndex) optionPressed,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? started,
    TResult Function()? submitPressed,
    TResult Function(String? option, int? currentIndex)? optionPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_OptionPressed value) optionPressed,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_OptionPressed value)? optionPressed,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionbankEvent {
  const factory _Started(int? id) = _$_Started;

  int? get id => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitPressedCopyWith<$Res> {
  factory _$SubmitPressedCopyWith(
          _SubmitPressed value, $Res Function(_SubmitPressed) then) =
      __$SubmitPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitPressedCopyWithImpl<$Res>
    extends _$QuestionbankEventCopyWithImpl<$Res>
    implements _$SubmitPressedCopyWith<$Res> {
  __$SubmitPressedCopyWithImpl(
      _SubmitPressed _value, $Res Function(_SubmitPressed) _then)
      : super(_value, (v) => _then(v as _SubmitPressed));

  @override
  _SubmitPressed get _value => super._value as _SubmitPressed;
}

/// @nodoc

class _$_SubmitPressed implements _SubmitPressed {
  const _$_SubmitPressed();

  @override
  String toString() {
    return 'QuestionbankEvent.submitPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SubmitPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) started,
    required TResult Function() submitPressed,
    required TResult Function(String? option, int? currentIndex) optionPressed,
  }) {
    return submitPressed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? started,
    TResult Function()? submitPressed,
    TResult Function(String? option, int? currentIndex)? optionPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_OptionPressed value) optionPressed,
  }) {
    return submitPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_OptionPressed value)? optionPressed,
    required TResult orElse(),
  }) {
    if (submitPressed != null) {
      return submitPressed(this);
    }
    return orElse();
  }
}

abstract class _SubmitPressed implements QuestionbankEvent {
  const factory _SubmitPressed() = _$_SubmitPressed;
}

/// @nodoc
abstract class _$OptionPressedCopyWith<$Res> {
  factory _$OptionPressedCopyWith(
          _OptionPressed value, $Res Function(_OptionPressed) then) =
      __$OptionPressedCopyWithImpl<$Res>;
  $Res call({String? option, int? currentIndex});
}

/// @nodoc
class __$OptionPressedCopyWithImpl<$Res>
    extends _$QuestionbankEventCopyWithImpl<$Res>
    implements _$OptionPressedCopyWith<$Res> {
  __$OptionPressedCopyWithImpl(
      _OptionPressed _value, $Res Function(_OptionPressed) _then)
      : super(_value, (v) => _then(v as _OptionPressed));

  @override
  _OptionPressed get _value => super._value as _OptionPressed;

  @override
  $Res call({
    Object? option = freezed,
    Object? currentIndex = freezed,
  }) {
    return _then(_OptionPressed(
      option == freezed
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as String?,
      currentIndex == freezed
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_OptionPressed implements _OptionPressed {
  const _$_OptionPressed(this.option, this.currentIndex);

  @override
  final String? option;
  @override
  final int? currentIndex;

  @override
  String toString() {
    return 'QuestionbankEvent.optionPressed(option: $option, currentIndex: $currentIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OptionPressed &&
            (identical(other.option, option) ||
                const DeepCollectionEquality().equals(other.option, option)) &&
            (identical(other.currentIndex, currentIndex) ||
                const DeepCollectionEquality()
                    .equals(other.currentIndex, currentIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(option) ^
      const DeepCollectionEquality().hash(currentIndex);

  @JsonKey(ignore: true)
  @override
  _$OptionPressedCopyWith<_OptionPressed> get copyWith =>
      __$OptionPressedCopyWithImpl<_OptionPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? id) started,
    required TResult Function() submitPressed,
    required TResult Function(String? option, int? currentIndex) optionPressed,
  }) {
    return optionPressed(option, currentIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? id)? started,
    TResult Function()? submitPressed,
    TResult Function(String? option, int? currentIndex)? optionPressed,
    required TResult orElse(),
  }) {
    if (optionPressed != null) {
      return optionPressed(option, currentIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SubmitPressed value) submitPressed,
    required TResult Function(_OptionPressed value) optionPressed,
  }) {
    return optionPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SubmitPressed value)? submitPressed,
    TResult Function(_OptionPressed value)? optionPressed,
    required TResult orElse(),
  }) {
    if (optionPressed != null) {
      return optionPressed(this);
    }
    return orElse();
  }
}

abstract class _OptionPressed implements QuestionbankEvent {
  const factory _OptionPressed(String? option, int? currentIndex) =
      _$_OptionPressed;

  String? get option => throw _privateConstructorUsedError;
  int? get currentIndex => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$OptionPressedCopyWith<_OptionPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$QuestionbankStateTearOff {
  const _$QuestionbankStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Loading loading() {
    return const _Loading();
  }

  _LoadSuccess loadSuccess(List<QuestionBank>? questionList, Result? result,
      Option<Either<ResultFailure, Unit>>? failureOrSuccessOption) {
    return _LoadSuccess(
      questionList,
      result,
      failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $QuestionbankState = _$QuestionbankStateTearOff();

/// @nodoc
mixin _$QuestionbankState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)
        loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)?
        loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionbankStateCopyWith<$Res> {
  factory $QuestionbankStateCopyWith(
          QuestionbankState value, $Res Function(QuestionbankState) then) =
      _$QuestionbankStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$QuestionbankStateCopyWithImpl<$Res>
    implements $QuestionbankStateCopyWith<$Res> {
  _$QuestionbankStateCopyWithImpl(this._value, this._then);

  final QuestionbankState _value;
  // ignore: unused_field
  final $Res Function(QuestionbankState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$QuestionbankStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'QuestionbankState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)
        loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QuestionbankState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$QuestionbankStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'QuestionbankState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)
        loadSuccess,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)?
        loadSuccess,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements QuestionbankState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {List<QuestionBank>? questionList,
      Result? result,
      Option<Either<ResultFailure, Unit>>? failureOrSuccessOption});

  $ResultCopyWith<$Res>? get result;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$QuestionbankStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? questionList = freezed,
    Object? result = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_LoadSuccess(
      questionList == freezed
          ? _value.questionList
          : questionList // ignore: cast_nullable_to_non_nullable
              as List<QuestionBank>?,
      result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Result?,
      failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<ResultFailure, Unit>>?,
    ));
  }

  @override
  $ResultCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $ResultCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(
      this.questionList, this.result, this.failureOrSuccessOption);

  @override
  final List<QuestionBank>? questionList;
  @override
  final Result? result;
  @override
  final Option<Either<ResultFailure, Unit>>? failureOrSuccessOption;

  @override
  String toString() {
    return 'QuestionbankState.loadSuccess(questionList: $questionList, result: $result, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.questionList, questionList) ||
                const DeepCollectionEquality()
                    .equals(other.questionList, questionList)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.failureOrSuccessOption, failureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.failureOrSuccessOption, failureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(questionList) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(failureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)
        loadSuccess,
  }) {
    return loadSuccess(questionList, result, failureOrSuccessOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<QuestionBank>? questionList, Result? result,
            Option<Either<ResultFailure, Unit>>? failureOrSuccessOption)?
        loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(questionList, result, failureOrSuccessOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements QuestionbankState {
  const factory _LoadSuccess(List<QuestionBank>? questionList, Result? result,
          Option<Either<ResultFailure, Unit>>? failureOrSuccessOption) =
      _$_LoadSuccess;

  List<QuestionBank>? get questionList => throw _privateConstructorUsedError;
  Result? get result => throw _privateConstructorUsedError;
  Option<Either<ResultFailure, Unit>>? get failureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
