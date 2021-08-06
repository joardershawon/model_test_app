import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';

class ModelListWidget extends StatelessWidget {
  final String? name;
  final VoidCallback? onTap;
  const ModelListWidget({
    Key? key,
    @required this.name,
    @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: InkWell(
          onTap: () => onTap!(),
          child: ListTile(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            minVerticalPadding: 10,
            tileColor: Coolors.blue5,
            title: Text(
              name!,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
