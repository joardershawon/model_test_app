import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/injection.dart';
import 'package:model_test/presentation/examPage/widgets/exam_body.dart';

class ExamPage extends StatelessWidget {
  final int? modelId, duration;

  const ExamPage({
    Key? key,
    @required this.modelId,
    @required this.duration,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EXAM'),
      ),
      body: BlocProvider(
        create: (context) => getIt!<QuestionbankBloc>()
          ..add(
            QuestionbankEvent.started(modelId),
          ),
        child: ExamBody(
          modelTestId: modelId.toString(),
          duration: duration,
        ),
      ),
    );
  }
}
