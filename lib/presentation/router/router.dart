import 'package:auto_route/auto_route.dart';
import 'package:model_test/presentation/model_test/model_test_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: ModelTestPage, initial: true),
  ],
)
class $AppRouter {}
