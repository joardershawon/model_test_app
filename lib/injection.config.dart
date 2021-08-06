// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/model_test_page/modeltestpage_bloc.dart' as _i5;
import 'domain/model_test/i_model_repository.dart' as _i3;
import 'infrastructure/model_test/model_test_repository.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IModelTestRepository>(() => _i4.ModelTestRepo());
  gh.factory<_i5.ModeltestpageBloc>(
      () => _i5.ModeltestpageBloc(get<_i3.IModelTestRepository>()));
  return get;
}
