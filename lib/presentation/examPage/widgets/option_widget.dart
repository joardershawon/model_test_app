import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:model_test/application/question_bank/questionbank_bloc.dart';
import 'package:model_test/presentation/design/coolors.dart';

class OptionWidget extends StatelessWidget {
  const OptionWidget({
    Key? key,
    @required this.currentIndex,
    @required this.qStr,
  }) : super(key: key);

  final String? qStr;
  final int? currentIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ListTile(
        onTap: () {
          BlocProvider.of<QuestionbankBloc>(context).add(
            QuestionbankEvent.optionPressed(
              qStr!.isNotEmpty ? qStr : 'none',
              currentIndex,
            ),
          );
        },
        title: Text(
          qStr!.isEmpty ? 'None Above' : qStr!,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        tileColor: Coolors.razzmicBerry.withOpacity(.5),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
