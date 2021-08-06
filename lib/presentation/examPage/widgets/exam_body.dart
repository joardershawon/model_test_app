import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';

class ExamBody extends StatelessWidget {
  final String? modelTestId;
  const ExamBody({
    Key? key,
    @required this.modelTestId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QuestionbankBloc, QuestionbankState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            child: Text('stuck'),
          ),
          loading: (_) => Center(child: CircularProgressIndicator()),
          loadSuccess: (state) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        modelTestId!,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Text(state.questionList![0].questionStr!.value),
                  Text(state.questionList![0].questionOption1!.value),
                  Text(state.questionList![0].questionOption2!.value),
                  Text(state.questionList![0].questionOption3!.value),
                  Text(
                    'Correct Answer: ' +
                        state.questionList![0].questionCorrectAnswer!.value,
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
