// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/model_test/model_tests.dart' as _i5;
import '../model_test_details/model_test_details_page.dart' as _i4;
import '../model_test_list/model_test_page.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ModelTestPageRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.ModelTestPage();
        }),
    ModelTestDetailsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<ModelTestDetailsRouteArgs>(
              orElse: () => const ModelTestDetailsRouteArgs());
          return _i4.ModelTestDetails(key: args.key, modelTest: args.modelTest);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ModelTestPageRoute.name, path: '/'),
        _i1.RouteConfig(ModelTestDetailsRoute.name, path: '/model-test-details')
      ];
}

class ModelTestPageRoute extends _i1.PageRouteInfo {
  const ModelTestPageRoute() : super(name, path: '/');

  static const String name = 'ModelTestPageRoute';
}

class ModelTestDetailsRoute
    extends _i1.PageRouteInfo<ModelTestDetailsRouteArgs> {
  ModelTestDetailsRoute({_i2.Key? key, _i5.ModelTest? modelTest})
      : super(name,
            path: '/model-test-details',
            args: ModelTestDetailsRouteArgs(key: key, modelTest: modelTest));

  static const String name = 'ModelTestDetailsRoute';
}

class ModelTestDetailsRouteArgs {
  const ModelTestDetailsRouteArgs({this.key, this.modelTest});

  final _i2.Key? key;

  final _i5.ModelTest? modelTest;
}
