import 'package:dartz/dartz.dart';
import 'package:mybook/Core/Error/failure.dart';

abstract class UseCase<Type, Param> {
// templete
  Future<Either<Failure, Type>> call([Param param]);
}
