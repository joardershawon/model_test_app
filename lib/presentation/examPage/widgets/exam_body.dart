import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/design/size.dart';
import 'package:model_test/presentation/examPage/widgets/exam_card_widget.dart';
import 'package:model_test/presentation/router/router.gr.dart';
import 'package:nb_utils/nb_utils.dart';

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
                  ExamCardWidget(
                    key: ValueKey(currentIndex),
                    currentIndex: currentIndex,
                    qIndex: state.questionList![currentIndex].questionId!.value
                        .toString(),
                    qStr: state.questionList![currentIndex].questionStr!.value,
                    qFirst: state
                        .questionList![currentIndex].questionOption1!.value,
                    qSecond: state
                        .questionList![currentIndex].questionOption2!.value,
                    qThird: state
                        .questionList![currentIndex].questionOption3!.value,
                    qFourth: state
                        .questionList![currentIndex].questionOption4!.value,
                    qFifth: state
                        .questionList![currentIndex].questionOption5!.value,
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
                        },
                        child: Icon(
                          Icons.navigate_next,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        onTap: () {
                          showConfirmDialogCustom(
                            context,
                            title: 'Submit?',
                            onAccept: (_) {
                              // BlocProvider.of<QuestionbankBloc>(context).add(
                              //   QuestionbankEvent.submitPressed(),
                              // );
                              AutoRouter.of(context).popTop();
                            },
                          ).then((value) => AutoRouter.of(context).popTop());
                        },
                        color: Coolors.blue5,
                        text: 'Submit?',
                      )
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
