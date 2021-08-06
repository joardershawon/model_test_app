// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/model_test_page/modeltestpage_bloc.dart' as _i7;
import 'application/question_bank/questionbank_bloc.dart' as _i8;
import 'domain/model_test/i_model_repository.dart' as _i3;
import 'domain/question_bank/i_question_bank_repository.dart' as _i5;
import 'infrastructure/model_test/model_test_repository.dart' as _i4;
import 'infrastructure/question_bank/question_bank_repository.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IModelTestRepository>(() => _i4.ModelTestRepo());
  gh.lazySingleton<_i5.IQuestionBankRepository>(
      () => _i6.QuestionBankRepository());
  gh.factory<_i7.ModeltestpageBloc>(
      () => _i7.ModeltestpageBloc(get<_i3.IModelTestRepository>()));
  gh.factory<_i8.QuestionbankBloc>(
      () => _i8.QuestionbankBloc(get<_i5.IQuestionBankRepository>()));
  return get;
}
