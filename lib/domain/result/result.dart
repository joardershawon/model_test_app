import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/result/value_objects.dart';
part 'result.freezed.dart';

@freezed
abstract class Result with _$Result {
  const factory Result({
    @required ResultId? resultId,
    @required StudentFullName? studentFullName,
    @required StudentId? studentId,
    @required ModelTestNo? modelTestNo,
    @required TotalQAttended? totalQAttended,
    @required TotalRAnswer? totalRAnswer,
    @required TotalWrongAnswer? totalWrongAnswer,
    @required TotalNegativeMarks? totalNegativeMarks,
    @required TotalMarks? totalMarks,
    @required PassOrFail? passOrFail,
    @required DurationTaken? durationTaken,
  }) = _Result;

  factory Result.empty() => Result(
        studentFullName: StudentFullName(''),
        studentId: StudentId(''),
        modelTestNo: ModelTestNo(0),
        totalQAttended: TotalQAttended(0),
        totalRAnswer: TotalRAnswer(0),
        totalWrongAnswer: TotalWrongAnswer(0),
        totalNegativeMarks: TotalNegativeMarks(0),
        totalMarks: TotalMarks(0),
        passOrFail: PassOrFail(''),
        durationTaken: DurationTaken(0),
        resultId: ResultId(0),
      );
}
