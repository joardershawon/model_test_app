import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/model_test_page/modeltestpage_bloc.dart';
import 'package:model_test/injection.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/model_test/widgets/model_test_body.dart';

class ModelTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt!<ModeltestpageBloc>()
        ..add(
          ModeltestpageEvent.started(),
        ),
      child: Scaffold(
        backgroundColor: Coolors.blue1,
        appBar: AppBar(
          backgroundColor: Coolors.blue5,
          title: Text(
            'Model Test',
            style: TextStyle(
              color: Coolors.raisinBlack,
            ),
          ),
        ),
        body: ModelTestBody(),
      ),
    );
  }
}
