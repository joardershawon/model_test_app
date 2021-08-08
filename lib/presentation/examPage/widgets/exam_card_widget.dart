import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/size.dart';
import 'package:model_test/presentation/examPage/widgets/option_widget.dart';

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
