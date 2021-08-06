import 'package:auto_route/auto_route.dart';
import 'package:model_test/presentation/examModelPage/exam_model_page.dart';
import 'package:model_test/presentation/examPage/exam_page.dart';

import 'package:model_test/presentation/homepage/homepage.dart';
import 'package:model_test/presentation/model_test_details/model_test_details_page.dart';

import 'package:model_test/presentation/model_test_list/model_test_page.dart';

@AdaptiveAutoRouter(
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ModelTestPage),
    AutoRoute(page: ExamModelPage),
    AutoRoute(page: ExamPage),
    AutoRoute(page: ModelTestDetails),
  ],
)
class $AppRouter {}
