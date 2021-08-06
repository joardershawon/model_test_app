import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:model_test/injection.dart';
import 'package:model_test/presentation/core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);

  runApp(MyApp());
}
