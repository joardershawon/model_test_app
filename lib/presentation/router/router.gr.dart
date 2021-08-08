// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/model_test/model_tests.dart' as _i9;
import '../examModelPage/exam_model_page.dart' as _i5;
import '../examPage/exam_page.dart' as _i6;
import '../homepage/homepage.dart' as _i3;
import '../model_test_details/model_test_details_page.dart' as _i8;
import '../model_test_list/model_test_page.dart' as _i4;
import '../result_page/result_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.HomePage();
        }),
    ModelTestPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.ModelTestPage();
        }),
    ExamModelPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.ExamModelPage();
        }),
    ExamPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ExamPageRouteArgs>(
              orElse: () => const ExamPageRouteArgs());
          return _i6.ExamPage(
              key: args.key, modelId: args.modelId, duration: args.duration);
        }),
    ResultPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.ResultPage();
        }),
    ModelTestDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ModelTestDetailsRouteArgs>(
              orElse: () => const ModelTestDetailsRouteArgs());
          return _i8.ModelTestDetails(key: args.key, modelTest: args.modelTest);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomePageRoute.name, path: '/'),
        _i1.RouteConfig(ModelTestPageRoute.name, path: '/model-test-page'),
        _i1.RouteConfig(ExamModelPageRoute.name, path: '/exam-model-page'),
        _i1.RouteConfig(ExamPageRoute.name, path: '/exam-page'),
        _i1.RouteConfig(ResultPageRoute.name, path: '/result-page'),
        _i1.RouteConfig(ModelTestDetailsRoute.name, path: '/model-test-details')
      ];
}

class HomePageRoute extends _i1.PageRouteInfo {
  const HomePageRoute() : super(name, path: '/');

  static const String name = 'HomePageRoute';
}

class ModelTestPageRoute extends _i1.PageRouteInfo {
  const ModelTestPageRoute() : super(name, path: '/model-test-page');

  static const String name = 'ModelTestPageRoute';
}

class ExamModelPageRoute extends _i1.PageRouteInfo {
  const ExamModelPageRoute() : super(name, path: '/exam-model-page');

  static const String name = 'ExamModelPageRoute';
}

class ExamPageRoute extends _i1.PageRouteInfo<ExamPageRouteArgs> {
  ExamPageRoute({_i2.Key? key, int? modelId, int? duration})
      : super(name,
            path: '/exam-page',
            args: ExamPageRouteArgs(
                key: key, modelId: modelId, duration: duration));

  static const String name = 'ExamPageRoute';
}

class ExamPageRouteArgs {
  const ExamPageRouteArgs({this.key, this.modelId, this.duration});

  final _i2.Key? key;

  final int? modelId;

  final int? duration;
}

class ResultPageRoute extends _i1.PageRouteInfo {
  const ResultPageRoute() : super(name, path: '/result-page');

  static const String name = 'ResultPageRoute';
}

class ModelTestDetailsRoute
    extends _i1.PageRouteInfo<ModelTestDetailsRouteArgs> {
  ModelTestDetailsRoute({_i2.Key? key, _i9.ModelTest? modelTest})
      : super(name,
            path: '/model-test-details',
            args: ModelTestDetailsRouteArgs(key: key, modelTest: modelTest));

  static const String name = 'ModelTestDetailsRoute';
}

class ModelTestDetailsRouteArgs {
  const ModelTestDetailsRouteArgs({this.key, this.modelTest});

  final _i2.Key? key;

  final _i9.ModelTest? modelTest;
}
