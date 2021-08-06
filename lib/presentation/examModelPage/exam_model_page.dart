import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/model_test_page/modeltestpage_bloc.dart';

import 'package:model_test/injection.dart';
import 'package:model_test/presentation/examModelPage/widgets/exam_model_page_body.dart';

class ExamModelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Model Test'),
      ),
      body: BlocProvider(
        create: (context) => getIt!<ModeltestpageBloc>()
          ..add(
            ModeltestpageEvent.started(),
          ),
        child: ExamModelPageBody(),
      ),
    );
  }
}
