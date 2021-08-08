import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:model_test/domain/question_bank/i_question_bank_repository.dart';
import 'package:model_test/domain/question_bank/question_bank.dart';
import 'package:model_test/domain/result/i_result_repository.dart';
import 'package:model_test/domain/result/result.dart';
import 'package:model_test/domain/result/result_failures.dart';
import 'package:model_test/domain/result/value_objects.dart';
import 'package:model_test/infrastructure/result/result_dto.dart';

part 'questionbank_bloc.freezed.dart';
part 'questionbank_event.dart';
part 'questionbank_state.dart';

@injectable
class QuestionbankBloc extends Bloc<QuestionbankEvent, QuestionbankState> {
  QuestionbankBloc(
    this._iQuestionBankRepository,
    this._iResultRepository,
  ) : super(_Initial());
  IQuestionBankRepository _iQuestionBankRepository;
  IResultRepository _iResultRepository;

  List<QuestionBank> qList = [];
  List<String> ansList = [];
  Result result = Result.empty();
  int currentIndex = 0;
  int counter = 10;
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
          yield QuestionbankState.loadSuccess(qList, result, none());
        } else {
          qList.add(QuestionBank.empty());
          yield QuestionbankState.loadSuccess(qList, result, none());
        }
        print(result);
      },
      optionPressed: (e) async* {
        currentIndex = e.currentIndex!;
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
      },
      submitPressed: (e) async* {
        //** .............Result Calculations.......... */
        var totalAnswrd = ansList.where((element) => element != 'null').length;
        var rightAns = ansList.where((element) => element == 'true').length;
        var wrongAns = ansList.where((element) => element == 'false').length;
        var totNeg =
            wrongAns * qList[currentIndex].modelTest!.modelNegativeMarks!.value;
        var totalMarks = rightAns - totNeg;
        var passOrf =
            qList[currentIndex].modelTest!.modelPassMarks!.value <= totalMarks
                ? 'P'
                : 'F';

        result = Result(
          studentFullName: StudentFullName('JS'),
          studentId: StudentId('9939'),
          modelTestNo:
              ModelTestNo(qList[currentIndex].modelTest!.modelId!.value),
          totalQAttended: TotalQAttended(totalAnswrd),
          totalRAnswer: TotalRAnswer(rightAns),
          totalWAnswer: TotalWAnswer(wrongAns),
          totalNegativeMarks: TotalNegativeMarks(totNeg),
          totalMarks: TotalMarks(totalMarks),
          passOrFail: PassOrFail(passOrf),
          durationTaken: DurationTaken(360),
        );
        //TODO: Post Result //

        ResultDto resultDto = ResultDto.fromDomain(result);
        Either<ResultFailure, Unit> failureOrSuccess;
        failureOrSuccess = await _iResultRepository.postResult(resultDto);
        print(failureOrSuccess);
        print(result);
        yield QuestionbankState.loadSuccess(
          qList,
          result,
          optionOf(failureOrSuccess),
        );
      },
    );
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
