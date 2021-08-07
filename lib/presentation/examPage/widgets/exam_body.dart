import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';

class ExamBody extends StatefulWidget {
  final String? modelTestId;
  const ExamBody({
    Key? key,
    @required this.modelTestId,
  }) : super(key: key);

  @override
  _ExamBodyState createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  int currentIndex = 0;
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
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        state.questionList![currentIndex].questionId!.value
                                .toString() +
                            '.',
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                          state.questionList![currentIndex].questionStr!.value),
                    ],
                  ),
                  Text(
                      state.questionList![currentIndex].questionOption1!.value),
                  Text(
                      state.questionList![currentIndex].questionOption2!.value),
                  Text(
                      state.questionList![currentIndex].questionOption3!.value),
                  Text(
                      state.questionList![currentIndex].questionOption4!.value),
                  Text(
                      state.questionList![currentIndex].questionOption5!.value),
                  Text(
                    'Correct Answer: ' +
                        state.questionList![currentIndex].questionCorrectAnswer!
                            .value,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (currentIndex > 0) {
                              currentIndex--;
                            } else
                              currentIndex = 0;
                          });
                        },
                        child: Icon(
                          Icons.navigate_before,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (currentIndex < state.questionList!.length - 1) {
                              currentIndex++;
                            } else
                              currentIndex = state.questionList!.length - 1;
                          });
                          print(state.questionList!.length);
                          print(currentIndex);
                        },
                        child: Icon(
                          Icons.navigate_next,
                        ),
                      ),
                    ],
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
