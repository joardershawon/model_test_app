import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/result_bloc/result_bloc.dart';
import 'package:model_test/injection.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/result_page/widgets/result_body.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.blue1,
      appBar: AppBar(
        backgroundColor: Coolors.blue5,
        title: Text('RESULT'),
      ),
      body: BlocProvider(
        create: (context) => getIt!<ResultBloc>()..add(ResultEvent.started()),
        child: ResultBody(),
      ),
    );
  }
}
