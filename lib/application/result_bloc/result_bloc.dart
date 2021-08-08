import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:model_test/domain/result/i_result_repository.dart';
import 'package:model_test/domain/result/result.dart';

part 'result_event.dart';
part 'result_state.dart';
part 'result_bloc.freezed.dart';

@injectable
class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc(this._iResultRepository) : super(_Initial());
  IResultRepository _iResultRepository;
  @override
  Stream<ResultState> mapEventToState(
    ResultEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield ResultState.loading();
        final resultData = await _iResultRepository.getAllResult();
        List<Result> resultBystudentId = resultData
            .where((element) => element.studentId!.value == '9939')
            .toList();
        var sorted = resultBystudentId
            .sorted((a, b) => b.resultId!.value.compareTo(a.resultId!.value));
        yield ResultState.loadSuccess(sorted);
      },
    );
  }

  @override
  Future<void> close() {
    // TODO: implement close
    return super.close();
  }
}
