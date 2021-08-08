import 'package:model_test/domain/result/result.dart';
import 'package:model_test/domain/result/result_failures.dart';
import 'package:model_test/infrastructure/result/result_dto.dart';
import 'package:dartz/dartz.dart';

abstract class IResultRepository {
  Future<List<Result>> getAllResult();
  Future<Either<ResultFailure, Unit>> postResult(ResultDto resultDto);
}
