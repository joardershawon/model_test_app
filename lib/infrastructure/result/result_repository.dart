import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';

import 'package:model_test/domain/result/i_result_repository.dart';
import 'package:model_test/domain/result/result.dart';
import 'package:model_test/domain/result/result_failures.dart';
import 'package:model_test/infrastructure/core/api.dart';
import 'package:model_test/infrastructure/result/result_dto.dart';

@LazySingleton(as: IResultRepository)
class ResultRepository implements IResultRepository {
  @override
  Future<List<Result>> getAllResult() async {
    final resultResponse = await http.get(Uri.parse(ApiPath.getResult));
    List data = jsonDecode(
      utf8.decode(resultResponse.bodyBytes),
    );
    final factoredData =
        data.map((e) => ResultDto.fromJson(e).toDomain()).toList();
    return factoredData;
  }

  @override
  Future<Either<ResultFailure, Unit>> postResult(ResultDto resultDto) async {
    Client _client = Client();

    var student_full_name = resultDto.student_full_name;
    var student_id = resultDto.student_id;
    var model_test = resultDto.model_test;
    var total_question_attended = resultDto.total_question_attended;
    var total_right_answer = resultDto.total_right_answer;
    var total_wrong_answer = resultDto.total_wrong_answer;
    var total_negative_marks = resultDto.total_negative_marks;
    var total_marks = resultDto.total_marks;
    var duration = resultDto.duration;
    var pass_fail = resultDto.pass_fail;

    // var student_full_name = resultDto.student_full_name;
    final response = await _client.post(
      Uri.parse(
        ApiPath.postResult,
      ),
      headers: {
        'Accept': '*/*',
        'Content-Type': 'application/json; charset=utf-8',
      },
      body: jsonEncode(
        <String, String>{
          "student_full_name": "$student_full_name",
          "student_id": "$student_id",
          "model_test": "$model_test",
          "total_question_attended": "$total_question_attended",
          "total_right_answer": "$total_right_answer",
          "total_wrong_answer": "$total_wrong_answer",
          "total_negative_marks": "$total_negative_marks",
          "total_marks": "$total_marks",
          "duration": "$duration",
          "pass_fail": "$pass_fail"
        },
      ),
    );
    print(response.statusCode);
    if (response.statusCode == 201) {
      print('posted');
      return right(unit);
    } else {
      print('failed');
      return left(ResultFailure.serverError());
    }
  }
}
