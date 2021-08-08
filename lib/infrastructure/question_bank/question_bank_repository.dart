import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import 'package:model_test/domain/question_bank/i_question_bank_repository.dart';
import 'package:model_test/domain/question_bank/question_bank.dart';
import 'package:model_test/infrastructure/core/api.dart';
import 'package:model_test/infrastructure/question_bank/question_bank_dto.dart';

@LazySingleton(as: IQuestionBankRepository)
class QuestionBankRepository implements IQuestionBankRepository {
  @override
  Future<List<QuestionBank>> getAllQuestionBank() async {
    final questionBankResponse =
        await http.get(Uri.parse(ApiPath.questionBank));
    List data = jsonDecode(
      utf8.decode(questionBankResponse.bodyBytes),
    );
    final factoredData =
        data.map((e) => QuestionBankDto.fromJson(e).toDomain()).toList();
    return factoredData;
  }
}
