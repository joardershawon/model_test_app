import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/result/result.dart';
import 'package:model_test/domain/result/value_objects.dart';
part 'result_dto.freezed.dart';
part 'result_dto.g.dart';

@freezed
abstract class ResultDto implements _$ResultDto {
  const ResultDto._();
  const factory ResultDto({
    @required String? student_full_name,
    @required String? student_id,
    @required int? model_test,
    @required int? total_question_attended,
    @required int? total_right_answer,
    @required int? total_wrong_answer,
    @required double? total_negative_marks,
    @required double? total_marks,
    @required int? duration,
    @required String? pass_fail,
  }) = _ResultDto;

  factory ResultDto.fromDomain(Result? result) {
    return ResultDto(
      student_full_name: result!.studentFullName!.value,
      student_id: result.studentId!.value,
      model_test: result.modelTestNo!.value,
      total_question_attended: result.totalQAttended!.value,
      total_right_answer: result.totalRAnswer!.value,
      total_wrong_answer: result.totalWAnswer!.value,
      total_negative_marks: result.totalNegativeMarks!.value,
      total_marks: result.totalMarks!.value,
      pass_fail: result.passOrFail!.value,
      duration: result.durationTaken!.value,
    );
  }

  Result toDomain() {
    return Result(
      studentFullName: StudentFullName(student_full_name),
      studentId: StudentId(student_id),
      modelTestNo: ModelTestNo(model_test),
      totalQAttended: TotalQAttended(total_question_attended),
      totalRAnswer: TotalRAnswer(total_right_answer),
      totalWAnswer: TotalWAnswer(total_wrong_answer),
      totalNegativeMarks: TotalNegativeMarks(total_negative_marks),
      totalMarks: TotalMarks(total_marks),
      passOrFail: PassOrFail(pass_fail),
      durationTaken: DurationTaken(duration ?? 0),
    );
  }

  factory ResultDto.fromJson(Map<String, dynamic> json) =>
      _$ResultDtoFromJson(json);
}
