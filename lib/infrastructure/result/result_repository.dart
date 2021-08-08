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

    var studentFullName = resultDto.student_full_name;
    var studentId = resultDto.student_id;
    var modelTest = resultDto.model_test;
    var totalQuestionAttended = resultDto.total_question_attended;
    var totalRightAnswer = resultDto.total_right_answer;
    var totalWrongAnswer = resultDto.total_wrong_answer;
    var totalNegativeMarks = resultDto.total_negative_marks;
    var totalMarks = resultDto.total_marks;
    var duration = resultDto.duration;
    var passFail = resultDto.pass_fail;

    // var student_full_name = resultDto.student_full_name;
    final response = await _client.post(
      Uri.parse(
        ApiPath.postResult,
      ),
      headers: {
        'Content-Type': 'application/json; charset=utf-8',
      },
      body: jsonEncode(
        <String, String>{
          "student_full_name": "$studentFullName",
          "student_id": "$studentId",
          "model_test": "$modelTest",
          "total_question_attended": "$totalQuestionAttended",
          "total_right_answer": "$totalRightAnswer",
          "total_wrong_answer": "$totalWrongAnswer",
          "total_negative_marks": "$totalNegativeMarks",
          "total_marks": "$totalMarks",
          "duration": "$duration",
          "pass_fail": "$passFail"
        },
      ),
    );

    if (response.statusCode == 201) {
      return right(unit);
    } else {
      return left(ResultFailure.serverError());
    }
  }
}
