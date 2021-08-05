import 'package:model_test/domain/model_test/model_tests.dart';

abstract class IModelTestRepository {
  Future<List<ModelTest>> watchAllModelTest();
}
