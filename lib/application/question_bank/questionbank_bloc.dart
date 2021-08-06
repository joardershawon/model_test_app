import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:model_test/domain/question_bank/i_question_bank_repository.dart';
import 'package:model_test/domain/question_bank/question_bank.dart';

part 'questionbank_bloc.freezed.dart';
part 'questionbank_event.dart';
part 'questionbank_state.dart';

@injectable
class QuestionbankBloc extends Bloc<QuestionbankEvent, QuestionbankState> {
  QuestionbankBloc(
    this._iQuestionBankRepository,
  ) : super(_Initial());
  IQuestionBankRepository _iQuestionBankRepository;

  List<QuestionBank> qList = [];
  @override
  Stream<QuestionbankState> mapEventToState(
    QuestionbankEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield QuestionbankState.loading();
        final quesBank = await _iQuestionBankRepository.getAllQuestionBank();
        qList = quesBank
            .where((element) => element.modelTest!.modelId!.value == e.id)
            .toList();
        print(qList);
        yield QuestionbankState.loadSuccess(qList.reversed.toList());
      },
    );
  }
}
