import 'package:mybook/UI/home_screan/domain/entities/book_entity.dart';

abstract class HomeRepo {
  

  Future<List<BookEntity>> fetchFeaturedBook();

  Future<List<BookEntity>> fetchNewestBooks();
}