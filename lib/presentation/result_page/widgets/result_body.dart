import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/result_bloc/result_bloc.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/design/size.dart';

class ResultBody extends StatelessWidget {
  const ResultBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResultBloc, ResultState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Container(
            child: Text('stuck'),
          ),
          loading: (_) => Center(child: CircularProgressIndicator()),
          loadSuccess: (state) => SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: getPercentSize(88, true, context),
                    child: ListView.builder(
                        itemCount: state.resultList.length,
                        itemBuilder: (context, index) {
                          return ResultCardWidget(
                            resultId: state.resultList[index].resultId!.value
                                .toString(),
                            studentName:
                                state.resultList[index].studentFullName!.value,
                            studentId: state.resultList[index].studentId!.value,
                            modelTestNo: state
                                .resultList[index].modelTestNo!.value
                                .toString(),
                            totalQattend: state
                                .resultList[index].totalQAttended!.value
                                .toString(),
                            totalRans: state
                                .resultList[index].totalRAnswer!.value
                                .toString(),
                            totalWans: state
                                .resultList[index].totalWrongAnswer!.value
                                .toString(),
                            totalMarks: state
                                .resultList[index].totalMarks!.value
                                .toString(),
                            totalNegMarks: state
                                .resultList[index].totalNegativeMarks!.value
                                .toString(),
                            duration: ((state.resultList[index].durationTaken!
                                        .value) /
                                    60)
                                .toString(),
                            passorf: state.resultList[index].passOrFail!.value
                                .toString(),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class ResultCardWidget extends StatelessWidget {
  final String? studentName,
      studentId,
      resultId,
      modelTestNo,
      totalQattend,
      totalRans,
      totalWans,
      totalMarks,
      totalNegMarks,
      duration,
      passorf;

  const ResultCardWidget({
    Key? key,
    @required this.studentName,
    @required this.resultId,
    @required this.studentId,
    @required this.modelTestNo,
    @required this.totalQattend,
    @required this.totalRans,
    @required this.totalWans,
    @required this.totalMarks,
    @required this.totalNegMarks,
    @required this.duration,
    @required this.passorf,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Coolors.raisinBlack,
              offset: Offset(5, 5),
              blurRadius: 10,
            ),
          ],
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ResultFieldWidget(
              title: 'ID',
              subTitle: resultId,
            ),
            ResultFieldWidget(
              title: 'Student Name',
              subTitle: studentName,
            ),
            ResultFieldWidget(
              title: 'Student Id',
              subTitle: studentId,
            ),
            ResultFieldWidget(
              title: 'Model Test No',
              subTitle: modelTestNo,
            ),
            ResultFieldWidget(
              title: 'Total Question Attended',
              subTitle: totalQattend,
            ),
            ResultFieldWidget(
              title: 'Total Right Answer',
              subTitle: totalRans,
            ),
            ResultFieldWidget(
              title: 'Total Wrong Answer',
              subTitle: totalWans,
            ),
            ResultFieldWidget(
              title: 'Total Negative Marks',
              subTitle: totalNegMarks,
            ),
            ResultFieldWidget(
              title: 'Total  Marks',
              subTitle: totalMarks,
            ),
            ResultFieldWidget(
              title: 'Pass Or Fail',
              subTitle: passorf,
            ),
            ResultFieldWidget(
              title: 'Duration',
              subTitle: duration,
            ),
          ],
        ),
      ),
    );
  }
}

class ResultFieldWidget extends StatelessWidget {
  final String? title, subTitle;
  const ResultFieldWidget({
    Key? key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        constraints: BoxConstraints(minWidth: 300),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Coolors.blue1,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title! + ' :',
                  style: TextStyle(
                    color: Coolors.raisinBlack,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                Text(
                  subTitle!,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
