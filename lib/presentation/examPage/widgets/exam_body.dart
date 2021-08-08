import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/examPage/widgets/exam_card_widget.dart';

class ExamBody extends StatefulWidget {
  final String? modelTestId;
  final int? duration;

  const ExamBody({
    Key? key,
    @required this.modelTestId,
    @required this.duration,
  }) : super(key: key);

  @override
  _ExamBodyState createState() => _ExamBodyState();
}

class _ExamBodyState extends State<ExamBody> {
  int currentIndex = 0;
  int? get maxTime => widget.duration;
  // var d = 0;
  var t = 0;
  Timer? timer;
  @override
  void initState() {
    // d = maxTime!;
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    timer!.cancel();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (tmr) {
      setState(() {
        t = tmr.tick;
        print(t);
        BlocProvider.of<QuestionbankBloc>(context).add(
          QuestionbankEvent.timerStarted(t),
        );
        // d != 0 ? d = d - t : d = 0;
      });
    });
  }

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
            var seconds = ((state.time! % 60) - 1).truncate().toString();
            var minutes = (state.time! / 60).truncate().toString();

            return SingleChildScrollView(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Coolors.blue1,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      minutes + ' : ' + seconds + ' s ',
                      style: TextStyle(
                        fontSize: 20,
                        color: Coolors.blackCoral,
                      ),
                    ),
                  ),
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
                  // const SizedBox(
                  //   height: 20,
                  // ),
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
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AppButton(
                        onTap: () {
                          showConfirmDialogCustom(
                            context,
                            title: 'Are you sure to SUBMIT RESULT ?',
                            onAccept: (_) {
                              BlocProvider.of<QuestionbankBloc>(context).add(
                                QuestionbankEvent.submitPressed(),
                              );
                              AutoRouter.of(context).popTop();
                              timer!.cancel();
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
