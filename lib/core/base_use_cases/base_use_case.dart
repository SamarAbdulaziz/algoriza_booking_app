import 'package:algoriza_booking_app/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class BaseUseCase<T, Parameter> {
  Future<Either<Failure, T>> call(Parameter parameter);
}

class NoParameters {
  NoParameters();
}
