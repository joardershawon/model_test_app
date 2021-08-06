import 'package:flutter/material.dart';
import 'package:model_test/presentation/design/coolors.dart';

class ModelTestCard extends StatelessWidget {
  final String? image, title, description, upcoming;
  final VoidCallback? ontap;
  const ModelTestCard({
    Key? key,
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.upcoming,
    @required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        onTap: () => ontap!(),
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Coolors.blue3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                image!,
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object exception,
                    StackTrace? stackTrace) {
                  return const Text(
                    "ERROR LOADING IMAGE....\nCheck Your Connection ..",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  );
                },
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
                  fontSize: 16,
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
                    child: Text(upcoming!.toUpperCase()),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
