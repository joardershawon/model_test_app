import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';

class ModelTestCard extends StatelessWidget {
  final String? image, title, description;
  const ModelTestCard({
    Key? key,
    @required this.image,
    @required this.title,
    @required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.all(10),
        color: Coolors.blue3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              image!,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              title!,
              style: const TextStyle(
                color: Coolors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description!,
              style: const TextStyle(
                color: Coolors.black,
                fontSize: 14,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Coolors.razzmicBerry.withOpacity(.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('UPCOMING'.toUpperCase()),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
