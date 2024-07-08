import 'package:dartz/dartz.dart';
import 'package:mybook/Core/Error/failure.dart';
import 'package:mybook/UI/home_screan/domain/entities/book_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBook();

  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks();
}
