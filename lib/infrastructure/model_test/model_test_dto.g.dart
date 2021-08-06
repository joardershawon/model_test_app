// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_test_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ModelTestDto _$_$_ModelTestDtoFromJson(Map<String, dynamic> json) {
  return _$_ModelTestDto(
    url: json['url'] as String?,
    id: json['id'] as int?,
    title: json['title'] as String?,
    short_description: json['short_description'] as String?,
    exam_start_date_time: json['exam_start_date_time'] as String?,
    exam_end_date_time: json['exam_end_date_time'] as String?,
    exam_result_date_time: json['exam_result_date_time'] as String?,
    exam_result_end_date_time: json['exam_result_end_date_time'] as String?,
    cover_image: json['cover_image'] as String?,
    negative_marks: (json['negative_marks'] as num?)?.toDouble(),
    subscription: json['subscription'] as String?,
    exam_time: json['exam_time'] as int?,
    pass_marks: (json['pass_marks'] as num?)?.toDouble(),
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$_$_ModelTestDtoToJson(_$_ModelTestDto instance) =>
    <String, dynamic>{
      'url': instance.url,
      'id': instance.id,
      'title': instance.title,
      'short_description': instance.short_description,
      'exam_start_date_time': instance.exam_start_date_time,
      'exam_end_date_time': instance.exam_end_date_time,
      'exam_result_date_time': instance.exam_result_date_time,
      'exam_result_end_date_time': instance.exam_result_end_date_time,
      'cover_image': instance.cover_image,
      'negative_marks': instance.negative_marks,
      'subscription': instance.subscription,
      'exam_time': instance.exam_time,
      'pass_marks': instance.pass_marks,
      'status': instance.status,
    };
