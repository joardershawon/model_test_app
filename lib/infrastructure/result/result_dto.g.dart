// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResultDto _$_$_ResultDtoFromJson(Map<String, dynamic> json) {
  return _$_ResultDto(
    id: json['id'] as int?,
    student_full_name: json['student_full_name'] as String?,
    student_id: json['student_id'] as String?,
    model_test: json['model_test'] as int?,
    total_question_attended: json['total_question_attended'] as int?,
    total_right_answer: json['total_right_answer'] as int?,
    total_wrong_answer: json['total_wrong_answer'] as int?,
    total_negative_marks: (json['total_negative_marks'] as num?)?.toDouble(),
    total_marks: (json['total_marks'] as num?)?.toDouble(),
    duration: json['duration'] as int?,
    pass_fail: json['pass_fail'] as String?,
  );
}

Map<String, dynamic> _$_$_ResultDtoToJson(_$_ResultDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_full_name': instance.student_full_name,
      'student_id': instance.student_id,
      'model_test': instance.model_test,
      'total_question_attended': instance.total_question_attended,
      'total_right_answer': instance.total_right_answer,
      'total_wrong_answer': instance.total_wrong_answer,
      'total_negative_marks': instance.total_negative_marks,
      'total_marks': instance.total_marks,
      'duration': instance.duration,
      'pass_fail': instance.pass_fail,
    };
