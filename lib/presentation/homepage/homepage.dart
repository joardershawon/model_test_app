import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';
import 'package:model_test/presentation/router/router.gr.dart';
import 'package:nb_utils/nb_utils.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Coolors.blue1,
      appBar: AppBar(
        backgroundColor: Coolors.blue5,
        title: Text(
          'Model Test App',
          style: TextStyle(color: Coolors.black),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(flex: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                  text: 'Model Test',
                  onTap: () {
                    AutoRouter.of(context).push(ModelTestPageRoute());
                  },
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                AppButton(
                  text: 'Take Exam',
                  onTap: () {
                    AutoRouter.of(context).push(ExamModelPageRoute());
                  },
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AppButton(
                  text: 'Result',
                  onTap: () {},
                  shapeBorder: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            const Spacer(flex: 4),
          ],
        ),
      ),
    );
  }
}
