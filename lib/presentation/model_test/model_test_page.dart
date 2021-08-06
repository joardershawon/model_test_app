import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/model_test/widgets/model_test_body.dart';

class ModelTestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
