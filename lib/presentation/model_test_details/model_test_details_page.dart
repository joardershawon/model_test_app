import 'package:flutter/material.dart';
import 'package:model_test/domain/model_test/model_tests.dart';
import 'package:model_test/presentation/design/coolors.dart';

class ModelTestDetails extends StatelessWidget {
  final ModelTest? modelTest;

  const ModelTestDetails({Key? key, @required this.modelTest})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Coolors.blue5,
        title: Text(
          modelTest!.modelTitle.toString(),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('URL: \n' + modelTest!.modelUrl.toString()),
              Text('Model Test Id: \n'.toUpperCase() + '${modelTest!.modelId}'),
              Text('Model Test Title: \n'.toUpperCase() +
                  '${modelTest!.modelTitle}'),
              Text('Model Test Short Description: \n'.toUpperCase() +
                  '${modelTest!.modelShortDescription}'),
              Text(
                'Model Test Exam Start Date: \n'.toUpperCase() +
                    DateTime.parse(modelTest!.modelExamStartDateTime!.value)
                        .toString(),
              ),
              Text(
                'Model Test Exam End Date: \n'.toUpperCase() +
                    DateTime.parse(modelTest!.modelExamEndDateTime!.value)
                        .toString(),
              ),
              Text(
                'Model Test Result Date: \n'.toUpperCase() +
                    DateTime.parse(modelTest!.modelExamResultDateTime!.value)
                        .toString(),
              ),
              Text(
                'Model Test Result End Date: \n'.toUpperCase() +
                    DateTime.parse(modelTest!.examResultEndDateTime!.value)
                        .toString(),
              ),
              Text('Model Test Negative Marks: \n'.toUpperCase() +
                  '${modelTest!.modelNegativeMarks}'),
              Text('Model Test Exam Time: \n'.toUpperCase() +
                  '${modelTest!.modelExamTime!.value / 60} ' +
                  'minute(s)'),
              Text('Model Test Pass Marks: \n'.toUpperCase() +
                  '${modelTest!.modelPassMarks}'),
            ],
          ),
        ),
      ),
    );
  }
}
