import 'package:model_test/domain/core.dart';

class StudentId extends ValueObject<String> {
  final String value;
  factory StudentId(String? input) {
    return StudentId._(input!);
  }
  const StudentId._(this.value);
}

class ResultId extends ValueObject<int> {
  final int value;
  factory ResultId(int? input) {
    return ResultId._(input!);
  }
  const ResultId._(this.value);
}

class StudentFullName extends ValueObject<String> {
  final String value;
  factory StudentFullName(String? input) {
    return StudentFullName._(input!);
  }
  const StudentFullName._(this.value);
}

class ModelTestNo extends ValueObject<int> {
  final int value;
  factory ModelTestNo(int? input) {
    return ModelTestNo._(input!);
  }
  const ModelTestNo._(this.value);
}

class TotalQAttended extends ValueObject<int> {
  final int value;
  factory TotalQAttended(int? input) {
    return TotalQAttended._(input!);
  }
  const TotalQAttended._(this.value);
}

class TotalRAnswer extends ValueObject<int> {
  final int value;
  factory TotalRAnswer(int? input) {
    return TotalRAnswer._(input!);
  }
  const TotalRAnswer._(this.value);
}

class TotalWAnswer extends ValueObject<int> {
  final int value;
  factory TotalWAnswer(int? input) {
    return TotalWAnswer._(input!);
  }
  const TotalWAnswer._(this.value);
}

class TotalNegativeMarks extends ValueObject<double> {
  final double value;
  factory TotalNegativeMarks(double? input) {
    return TotalNegativeMarks._(input!);
  }
  const TotalNegativeMarks._(this.value);
}

class TotalMarks extends ValueObject<double> {
  final double value;
  factory TotalMarks(double? input) {
    return TotalMarks._(input!);
  }
  const TotalMarks._(this.value);
}

class PassOrFail extends ValueObject<String> {
  final String value;
  factory PassOrFail(String? input) {
    return PassOrFail._(input!);
  }
  const PassOrFail._(this.value);
}

class DurationTaken extends ValueObject<int> {
  final int value;
  factory DurationTaken(int? input) {
    return DurationTaken._(input!);
  }
  const DurationTaken._(this.value);
}
