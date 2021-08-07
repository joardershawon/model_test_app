import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/design/size.dart';
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
                          print(state.questionList!.length);
                          print(currentIndex);
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
                        onTap: () {},
                        color: Coolors.blue5,
                        text: 'RESULT',
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

class ExamCardWidget extends StatelessWidget {
  final String? qIndex, qStr, qFirst, qSecond, qThird, qFourth, qFifth;
  final int? currentIndex;

  const ExamCardWidget({
    Key? key,
    @required this.qIndex,
    @required this.qStr,
    @required this.qFirst,
    @required this.qSecond,
    @required this.qThird,
    @required this.qFourth,
    @required this.qFifth,
    @required this.currentIndex,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPercentSize(60, true, context),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              qIndex! + '. ' + qStr!,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          OptionWidget(
            qStr: qFirst,
            currentIndex: currentIndex,
          ),
          OptionWidget(
            qStr: qSecond,
            currentIndex: currentIndex,
          ),
          OptionWidget(
            qStr: qThird,
            currentIndex: currentIndex,
          ),
          OptionWidget(
            qStr: qFourth,
            currentIndex: currentIndex,
          ),
          OptionWidget(
            qStr: qFifth,
            currentIndex: currentIndex,
          ),
        ],
      ),
    );
  }
}

class OptionWidget extends HookWidget {
  const OptionWidget({
    Key? key,
    @required this.currentIndex,
    @required this.qStr,
  }) : super(key: key);

  final String? qStr;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        onTap: () {
          BlocProvider.of<QuestionbankBloc>(context).add(
            QuestionbankEvent.optionPressed(
              qStr!.isNotEmpty ? qStr : 'none',
              currentIndex,
            ),
          );
        },
        title: Text(
          qStr!.isEmpty ? 'None Above' : qStr!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        tileColor: Coolors.razzmicBerry.withOpacity(.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
