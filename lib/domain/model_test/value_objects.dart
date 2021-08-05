import 'dart:ffi';

import 'package:model_test/domain/core.dart';

class ModelUrl extends ValueObject<String> {
  final String value;
  factory ModelUrl(String? input) {
    return ModelUrl._(input!);
  }
  const ModelUrl._(this.value);
}

class ModelId extends ValueObject<int> {
  final int value;
  factory ModelId(int? input) {
    return ModelId._(input!);
  }
  const ModelId._(this.value);
}

class ModelTitle extends ValueObject<String> {
  final String value;
  factory ModelTitle(String? input) {
    return ModelTitle._(input!);
  }
  const ModelTitle._(this.value);
}

class ModelShortDescription extends ValueObject<String> {
  final String value;
  factory ModelShortDescription(String? input) {
    return ModelShortDescription._(input!);
  }
  const ModelShortDescription._(this.value);
}

class ModelExamStartDateTime extends ValueObject<String> {
  final String value;
  factory ModelExamStartDateTime(String? input) {
    return ModelExamStartDateTime._(input!);
  }
  const ModelExamStartDateTime._(this.value);
}

class ModelExamEndDateTime extends ValueObject<String> {
  final String value;
  factory ModelExamEndDateTime(String? input) {
    return ModelExamEndDateTime._(input!);
  }
  const ModelExamEndDateTime._(this.value);
}

class ModelExamResultDateTime extends ValueObject<String> {
  final String value;
  factory ModelExamResultDateTime(String? input) {
    return ModelExamResultDateTime._(input!);
  }
  const ModelExamResultDateTime._(this.value);
}

class ModelExamResultEndDateTime extends ValueObject<String> {
  final String value;
  factory ModelExamResultEndDateTime(String? input) {
    return ModelExamResultEndDateTime._(input!);
  }
  const ModelExamResultEndDateTime._(this.value);
}

class ModelCoverImage extends ValueObject<String> {
  final String value;
  factory ModelCoverImage(String? input) {
    return ModelCoverImage._(input!);
  }
  const ModelCoverImage._(this.value);
}

class ModelNegativeMarks extends ValueObject<double> {
  final double value;
  factory ModelNegativeMarks(double? input) {
    return ModelNegativeMarks._(input!);
  }
  const ModelNegativeMarks._(this.value);
}

class ModelSubscription extends ValueObject<String> {
  final String value;
  factory ModelSubscription(String? input) {
    return ModelSubscription._(input!);
  }
  const ModelSubscription._(this.value);
}

class ModelExamTime extends ValueObject<int> {
  final int value;
  factory ModelExamTime(int? input) {
    return ModelExamTime._(input!);
  }
  const ModelExamTime._(this.value);
}

class ModelPassMarks extends ValueObject<double> {
  final double value;
  factory ModelPassMarks(double? input) {
    return ModelPassMarks._(input!);
  }
  const ModelPassMarks._(this.value);
}

class ModelStatus extends ValueObject<String> {
  final String value;
  factory ModelStatus(String? input) {
    return ModelStatus._(input!);
  }
  const ModelStatus._(this.value);
}
