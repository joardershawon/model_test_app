part of 'modeltestpage_bloc.dart';

@freezed
class ModeltestpageState with _$ModeltestpageState {
  const factory ModeltestpageState.initial() = _Initial;
  const factory ModeltestpageState.loading() = _Loading;
  const factory ModeltestpageState.loadSuccess(
    List<ModelTest> modelTest,
    List<String> overOrWhat,
  ) = _LoadSuccess;
}
