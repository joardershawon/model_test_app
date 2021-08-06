import 'package:model_test/domain/question_bank/question_bank.dart';

abstract class IQuestionBankRepository {
  Future<List<QuestionBank>> getAllQuestionBank();
}
