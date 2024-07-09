

import 'package:mybook/Core/API/api_service.dart';
import 'package:mybook/UI/home_screan/domain/entities/book_entity.dart';
import 'package:mybook/data/models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
    Future< List<BookEntity>> fetchFeaturedBook();

   Future< List<BookEntity>> fetchNewestBooks();
}

 class HomeRemoteDataSourceImpl extends HomeRemoteDataSource{

  final ApiService apiservice;

  HomeRemoteDataSourceImpl({required this.apiservice});




  @override
  Future<List<BookEntity>> fetchFeaturedBook() async {
    var data =  await apiservice.get(endpoint: 'volumes?q=programming'); 

    List<BookEntity> books= [];

    for (var item in data['items']) {
      books.add(BookModel.fromJson(item));
    }
    return books;
  }
 
  @override
  Future<List<BookEntity>> fetchNewestBooks() async{


  var data = await apiservice.get(endpoint: 'volumes?Sorting = newest & q=programming');

  List<BookEntity> books = [];

  for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
  }
  return books;
  }

 }