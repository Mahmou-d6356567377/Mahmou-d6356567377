import '../UI/home_screan/domain/entities/book_entity.dart';

abstract class LocalDataSource {
    List<BookEntity> fetchFeaturedBook();

    List<BookEntity> fetchNewestBooks();
}


class LocalDataSourceImpl {
  
}