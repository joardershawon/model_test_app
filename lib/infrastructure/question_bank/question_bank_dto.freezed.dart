// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'question_bank_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionBankDto _$QuestionBankDtoFromJson(Map<String, dynamic> json) {
  return _QuestionBankDto.fromJson(json);
}

/// @nodoc
class _$QuestionBankDtoTearOff {
  const _$QuestionBankDtoTearOff();

  _QuestionBankDto call(
      {int? id,
      String? question,
      String? option_1,
      String? option_2,
      String? option_3,
      String? option_4,
      String? option_5,
      String? correct_answer,
      ModelTestDto? model_test}) {
    return _QuestionBankDto(
      id: id,
      question: question,
      option_1: option_1,
      option_2: option_2,
      option_3: option_3,
      option_4: option_4,
      option_5: option_5,
      correct_answer: correct_answer,
      model_test: model_test,
    );
  }

  QuestionBankDto fromJson(Map<String, Object> json) {
    return QuestionBankDto.fromJson(json);
  }
}

/// @nodoc
const $QuestionBankDto = _$QuestionBankDtoTearOff();

/// @nodoc
mixin _$QuestionBankDto {
  int? get id => throw _privateConstructorUsedError;
  String? get question => throw _privateConstructorUsedError;
  String? get option_1 => throw _privateConstructorUsedError;
  String? get option_2 => throw _privateConstructorUsedError;
  String? get option_3 => throw _privateConstructorUsedError;
  String? get option_4 => throw _privateConstructorUsedError;
  String? get option_5 => throw _privateConstructorUsedError;
  String? get correct_answer => throw _privateConstructorUsedError;
  ModelTestDto? get model_test => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionBankDtoCopyWith<QuestionBankDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionBankDtoCopyWith<$Res> {
  factory $QuestionBankDtoCopyWith(
          QuestionBankDto value, $Res Function(QuestionBankDto) then) =
      _$QuestionBankDtoCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? question,
      String? option_1,
      String? option_2,
      String? option_3,
      String? option_4,
      String? option_5,
      String? correct_answer,
      ModelTestDto? model_test});

  $ModelTestDtoCopyWith<$Res>? get model_test;
}

/// @nodoc
class _$QuestionBankDtoCopyWithImpl<$Res>
    implements $QuestionBankDtoCopyWith<$Res> {
  _$QuestionBankDtoCopyWithImpl(this._value, this._then);

  final QuestionBankDto _value;
  // ignore: unused_field
  final $Res Function(QuestionBankDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? option_1 = freezed,
    Object? option_2 = freezed,
    Object? option_3 = freezed,
    Object? option_4 = freezed,
    Object? option_5 = freezed,
    Object? correct_answer = freezed,
    Object? model_test = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      option_1: option_1 == freezed
          ? _value.option_1
          : option_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_2: option_2 == freezed
          ? _value.option_2
          : option_2 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_3: option_3 == freezed
          ? _value.option_3
          : option_3 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_4: option_4 == freezed
          ? _value.option_4
          : option_4 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_5: option_5 == freezed
          ? _value.option_5
          : option_5 // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_answer: correct_answer == freezed
          ? _value.correct_answer
          : correct_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      model_test: model_test == freezed
          ? _value.model_test
          : model_test // ignore: cast_nullable_to_non_nullable
              as ModelTestDto?,
    ));
  }

  @override
  $ModelTestDtoCopyWith<$Res>? get model_test {
    if (_value.model_test == null) {
      return null;
    }

    return $ModelTestDtoCopyWith<$Res>(_value.model_test!, (value) {
      return _then(_value.copyWith(model_test: value));
    });
  }
}

/// @nodoc
abstract class _$QuestionBankDtoCopyWith<$Res>
    implements $QuestionBankDtoCopyWith<$Res> {
  factory _$QuestionBankDtoCopyWith(
          _QuestionBankDto value, $Res Function(_QuestionBankDto) then) =
      __$QuestionBankDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? question,
      String? option_1,
      String? option_2,
      String? option_3,
      String? option_4,
      String? option_5,
      String? correct_answer,
      ModelTestDto? model_test});

  @override
  $ModelTestDtoCopyWith<$Res>? get model_test;
}

/// @nodoc
class __$QuestionBankDtoCopyWithImpl<$Res>
    extends _$QuestionBankDtoCopyWithImpl<$Res>
    implements _$QuestionBankDtoCopyWith<$Res> {
  __$QuestionBankDtoCopyWithImpl(
      _QuestionBankDto _value, $Res Function(_QuestionBankDto) _then)
      : super(_value, (v) => _then(v as _QuestionBankDto));

  @override
  _QuestionBankDto get _value => super._value as _QuestionBankDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? question = freezed,
    Object? option_1 = freezed,
    Object? option_2 = freezed,
    Object? option_3 = freezed,
    Object? option_4 = freezed,
    Object? option_5 = freezed,
    Object? correct_answer = freezed,
    Object? model_test = freezed,
  }) {
    return _then(_QuestionBankDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      option_1: option_1 == freezed
          ? _value.option_1
          : option_1 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_2: option_2 == freezed
          ? _value.option_2
          : option_2 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_3: option_3 == freezed
          ? _value.option_3
          : option_3 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_4: option_4 == freezed
          ? _value.option_4
          : option_4 // ignore: cast_nullable_to_non_nullable
              as String?,
      option_5: option_5 == freezed
          ? _value.option_5
          : option_5 // ignore: cast_nullable_to_non_nullable
              as String?,
      correct_answer: correct_answer == freezed
          ? _value.correct_answer
          : correct_answer // ignore: cast_nullable_to_non_nullable
              as String?,
      model_test: model_test == freezed
          ? _value.model_test
          : model_test // ignore: cast_nullable_to_non_nullable
              as ModelTestDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionBankDto extends _QuestionBankDto {
  const _$_QuestionBankDto(
      {this.id,
      this.question,
      this.option_1,
      this.option_2,
      this.option_3,
      this.option_4,
      this.option_5,
      this.correct_answer,
      this.model_test})
      : super._();

  factory _$_QuestionBankDto.fromJson(Map<String, dynamic> json) =>
      _$_$_QuestionBankDtoFromJson(json);

  @override
  final int? id;
  @override
  final String? question;
  @override
  final String? option_1;
  @override
  final String? option_2;
  @override
  final String? option_3;
  @override
  final String? option_4;
  @override
  final String? option_5;
  @override
  final String? correct_answer;
  @override
  final ModelTestDto? model_test;

  @override
  String toString() {
    return 'QuestionBankDto(id: $id, question: $question, option_1: $option_1, option_2: $option_2, option_3: $option_3, option_4: $option_4, option_5: $option_5, correct_answer: $correct_answer, model_test: $model_test)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _QuestionBankDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.question, question) ||
                const DeepCollectionEquality()
                    .equals(other.question, question)) &&
            (identical(other.option_1, option_1) ||
                const DeepCollectionEquality()
                    .equals(other.option_1, option_1)) &&
            (identical(other.option_2, option_2) ||
                const DeepCollectionEquality()
                    .equals(other.option_2, option_2)) &&
            (identical(other.option_3, option_3) ||
                const DeepCollectionEquality()
                    .equals(other.option_3, option_3)) &&
            (identical(other.option_4, option_4) ||
                const DeepCollectionEquality()
                    .equals(other.option_4, option_4)) &&
            (identical(other.option_5, option_5) ||
                const DeepCollectionEquality()
                    .equals(other.option_5, option_5)) &&
            (identical(other.correct_answer, correct_answer) ||
                const DeepCollectionEquality()
                    .equals(other.correct_answer, correct_answer)) &&
            (identical(other.model_test, model_test) ||
                const DeepCollectionEquality()
                    .equals(other.model_test, model_test)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(question) ^
      const DeepCollectionEquality().hash(option_1) ^
      const DeepCollectionEquality().hash(option_2) ^
      const DeepCollectionEquality().hash(option_3) ^
      const DeepCollectionEquality().hash(option_4) ^
      const DeepCollectionEquality().hash(option_5) ^
      const DeepCollectionEquality().hash(correct_answer) ^
      const DeepCollectionEquality().hash(model_test);

  @JsonKey(ignore: true)
  @override
  _$QuestionBankDtoCopyWith<_QuestionBankDto> get copyWith =>
      __$QuestionBankDtoCopyWithImpl<_QuestionBankDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_QuestionBankDtoToJson(this);
  }
}

abstract class _QuestionBankDto extends QuestionBankDto {
  const factory _QuestionBankDto(
      {int? id,
      String? question,
      String? option_1,
      String? option_2,
      String? option_3,
      String? option_4,
      String? option_5,
      String? correct_answer,
      ModelTestDto? model_test}) = _$_QuestionBankDto;
  const _QuestionBankDto._() : super._();

  factory _QuestionBankDto.fromJson(Map<String, dynamic> json) =
      _$_QuestionBankDto.fromJson;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get question => throw _privateConstructorUsedError;
  @override
  String? get option_1 => throw _privateConstructorUsedError;
  @override
  String? get option_2 => throw _privateConstructorUsedError;
  @override
  String? get option_3 => throw _privateConstructorUsedError;
  @override
  String? get option_4 => throw _privateConstructorUsedError;
  @override
  String? get option_5 => throw _privateConstructorUsedError;
  @override
  String? get correct_answer => throw _privateConstructorUsedError;
  @override
  ModelTestDto? get model_test => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$QuestionBankDtoCopyWith<_QuestionBankDto> get copyWith =>
      throw _privateConstructorUsedError;
}
