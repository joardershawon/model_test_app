import 'package:freezed_annotation/freezed_annotation.dart';
part 'result_failures.freezed.dart';

@freezed
abstract class ResultFailure with _$ResultFailure {
  const factory ResultFailure.serverError() = ServerError;
}
