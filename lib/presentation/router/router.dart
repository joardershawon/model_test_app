import 'package:auto_route/auto_route.dart';
import 'package:model_test/presentation/model_test_details/model_test_details_page.dart';

import 'package:model_test/presentation/model_test_list/model_test_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: ModelTestPage, initial: true),
    AutoRoute(page: ModelTestDetails),
  ],
)
class $AppRouter {}
