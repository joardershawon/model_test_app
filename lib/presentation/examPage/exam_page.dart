import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/injection.dart';
import 'package:model_test/presentation/examPage/widgets/exam_body.dart';

class ExamPage extends StatelessWidget {
  final int? modelId;

  const ExamPage({Key? key, this.modelId}) : super(key: key);
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
        ),
      ),
    );
  }
}
