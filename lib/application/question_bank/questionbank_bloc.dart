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
  List<String> ansList = [];
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
        ansList = List.filled(qList.length, 'null');
        if (qList.isNotEmpty) {
          yield QuestionbankState.loadSuccess(qList);
        } else {
          qList.add(QuestionBank.empty());
          yield QuestionbankState.loadSuccess(qList);
        }
      },
      optionPressed: (e) async* {
        if (qList[e.currentIndex!]
            .questionCorrectAnswer!
            .value
            .contains(e.option!)) {
          ansList[e.currentIndex!].contains('null')
              ? ansList[e.currentIndex!] = 'true'
              : ansList[e.currentIndex!] = ansList[e.currentIndex!];
        } else {
          ansList[e.currentIndex!].contains('null')
              ? ansList[e.currentIndex!] = 'false'
              : ansList[e.currentIndex!] = ansList[e.currentIndex!];
        }

        //** .............Result Calculations.......... */
        var totalAnswrd = ansList.where((element) => element != 'null').length;
        var rightAns = ansList.where((element) => element == 'true').length;
        var wrongAns = ansList.where((element) => element == 'false').length;
        var totNeg = wrongAns *
            qList[e.currentIndex!].modelTest!.modelNegativeMarks!.value;
        var totalMarks = rightAns - totNeg;

        print('total Marks' + totalMarks.toString());
        qList[e.currentIndex!].modelTest!.modelPassMarks!.value <= totalMarks
            ? print('Passed')
            : print('failed');
        // print(ansList);
        // print(ansList.where((element) => element == 'true').length);
        // print(ansList.where((element) => element == 'false').length);
        // print(
        //  }',
        // );
      },
      //TODO: RESULT EVENT TO BE IMPLEMENTED
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
