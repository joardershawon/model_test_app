import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:model_test/domain/model_test/value_objects.dart';
part 'model_tests.freezed.dart';

@freezed
abstract class ModelTest with _$ModelTest {
  const factory ModelTest({
    @required ModelUrl? modelUrl,
    @required ModelId? modelId,
    @required ModelTitle? modelTitle,
    @required ModelShortDescription? modelShortDescription,
    @required ModelExamStartDateTime? modelExamStartDateTime,
    @required ModelExamEndDateTime? modelExamEndDateTime,
    @required ModelExamResultDateTime? modelExamResultDateTime,
    @required ModelExamResultEndDateTime? examResultEndDateTime,
    @required ModelCoverImage? modelCoverImage,
    @required ModelNegativeMarks? modelNegativeMarks,
    @required ModelSubscription? modelSubscription,
    @required ModelExamTime? modelExamTime,
    @required ModelPassMarks? modelPassMarks,
    @required ModelStatus? modelStatus,
  }) = _ModelTest;

  factory ModelTest.empty() => ModelTest(
        modelUrl: ModelUrl(''),
        modelId: ModelId(0),
        modelTitle: ModelTitle(''),
        modelShortDescription: ModelShortDescription(''),
        modelExamStartDateTime: ModelExamStartDateTime(''),
        modelExamEndDateTime: ModelExamEndDateTime(''),
        modelExamResultDateTime: ModelExamResultDateTime(''),
        modelCoverImage: ModelCoverImage(''),
        modelNegativeMarks: ModelNegativeMarks(0.0),
        modelSubscription: ModelSubscription(''),
        modelExamTime: ModelExamTime(0),
        modelPassMarks: ModelPassMarks(0),
        modelStatus: ModelStatus(''),
        examResultEndDateTime: ModelExamResultEndDateTime(''),
      );
}
