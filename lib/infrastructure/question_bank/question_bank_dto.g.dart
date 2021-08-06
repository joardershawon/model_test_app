// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_bank_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionBankDto _$_$_QuestionBankDtoFromJson(Map<String, dynamic> json) {
  return _$_QuestionBankDto(
    id: json['id'] as int?,
    question: json['question'] as String?,
    option_1: json['option_1'] as String?,
    option_2: json['option_2'] as String?,
    option_3: json['option_3'] as String?,
    option_4: json['option_4'] as String?,
    option_5: json['option_5'] as String?,
    correct_answer: json['correct_answer'] as String?,
    model_test: json['model_test'] == null
        ? null
        : ModelTestDto.fromJson(json['model_test'] as Map<String, dynamic>?),
  );
}

Map<String, dynamic> _$_$_QuestionBankDtoToJson(_$_QuestionBankDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'question': instance.question,
      'option_1': instance.option_1,
      'option_2': instance.option_2,
      'option_3': instance.option_3,
      'option_4': instance.option_4,
      'option_5': instance.option_5,
      'correct_answer': instance.correct_answer,
      'model_test': instance.model_test,
    };
