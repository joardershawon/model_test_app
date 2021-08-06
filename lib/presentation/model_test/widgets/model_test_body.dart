import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/design/size.dart';
import 'package:model_test/presentation/model_test/widgets/model_test_card.dart';

class ModelTestBody extends StatelessWidget {
  const ModelTestBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: getPercentSize(100, true, context),
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ModelTestCard(
                    title: 'Title',
                    description: 'Description',
                    image:
                        'http://165.22.196.82:8080/media/mcq_model_test_image/live-model-test_1NMTIBC.jpg',
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
