import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:model_test/domain/model_test/i_model_repository.dart';
import 'package:model_test/domain/model_test/model_tests.dart';

part 'modeltestpage_event.dart';
part 'modeltestpage_state.dart';
part 'modeltestpage_bloc.freezed.dart';

@injectable
class ModeltestpageBloc extends Bloc<ModeltestpageEvent, ModeltestpageState> {
  ModeltestpageBloc(this._iModelTestRepository) : super(_Initial());
  IModelTestRepository _iModelTestRepository;
  @override
  Stream<ModeltestpageState> mapEventToState(
    ModeltestpageEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        // ModeltestpageState.initial();
        yield ModeltestpageState.loading();
        var items = await _iModelTestRepository.watchAllModelTest();
        var reversedItems = items.reversed.toList();

        var currentDate = DateTime.now();
        List<String> overOrWhat = [];

        reversedItems.forEach(
          (element) {
            var startD = DateTime.parse(element.modelExamStartDateTime!.value);
            if (startD.isBefore(currentDate)) {
              overOrWhat.add('GET RESULT');
            } else if (startD.isAfter(currentDate)) {
              overOrWhat.add('UPCOMING');
            } else {
              overOrWhat.add('TAKE EXAM');
            }
          },
        );

        yield ModeltestpageState.loadSuccess(reversedItems, overOrWhat);
      },
    );
  }
}
