import 'package:flutter/cupertino.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/book_list_item.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key,});
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      
      scrollDirection:Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context , index ) => const  BookListItem());
  }
}