import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:model_test/domain/model_test/i_model_repository.dart';
import 'package:model_test/domain/model_test/model_tests.dart';
import 'package:model_test/infrastructure/core/api.dart';
import 'package:model_test/infrastructure/model_test/model_test_dto.dart';

@LazySingleton(as: IModelTestRepository)
class ModelTestRepo implements IModelTestRepository {
  @override
  Future<List<ModelTest>> watchAllModelTest() async {
    final modelTestResponse = await http.get(Uri.parse(ApiPath.modelTest));
    List data = jsonDecode(
      utf8.decode(modelTestResponse.bodyBytes),
    );
    // print(data);
    final factoredData =
        data.map((e) => ModelTestDto.fromJson(e).toDomain()).toList();
    return factoredData;
  }
}
