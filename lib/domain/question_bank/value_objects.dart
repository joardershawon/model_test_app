import 'package:model_test/domain/core.dart';

class QuestionId extends ValueObject<int> {
  final int value;
  factory QuestionId(int? input) {
    return QuestionId._(input!);
  }
  const QuestionId._(this.value);
}

class QuestionStr extends ValueObject<String> {
  final String value;
  factory QuestionStr(String? input) {
    return QuestionStr._(input!);
  }
  const QuestionStr._(this.value);
}

class QuestionOption1 extends ValueObject<String> {
  final String value;
  factory QuestionOption1(String? input) {
    return QuestionOption1._(input!);
  }
  const QuestionOption1._(this.value);
}

class QuestionOption2 extends ValueObject<String> {
  final String value;
  factory QuestionOption2(String? input) {
    return QuestionOption2._(input!);
  }
  const QuestionOption2._(this.value);
}

class QuestionOption3 extends ValueObject<String> {
  final String value;
  factory QuestionOption3(String? input) {
    return QuestionOption3._(input!);
  }
  const QuestionOption3._(this.value);
}

class QuestionOption4 extends ValueObject<String> {
  final String value;
  factory QuestionOption4(String? input) {
    return QuestionOption4._(input!);
  }
  const QuestionOption4._(this.value);
}

class QuestionOption5 extends ValueObject<String> {
  final String value;
  factory QuestionOption5(String? input) {
    return QuestionOption5._(input!);
  }
  const QuestionOption5._(this.value);
}

class QuestionCorrectAnswer extends ValueObject<String> {
  final String value;
  factory QuestionCorrectAnswer(String? input) {
    return QuestionCorrectAnswer._(input!);
  }
  const QuestionCorrectAnswer._(this.value);
}
