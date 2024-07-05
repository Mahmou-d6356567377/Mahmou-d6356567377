import 'package:flutter/material.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/Newst_book_item.dart';

class NewestBookList extends StatelessWidget {
  const NewestBookList({super.key , required this.isScroll});
  final bool isScroll ;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: isScroll? const NeverScrollableScrollPhysics(): null,
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.all(8.0),
          child:  NewestBookItem(),
        );
      }
    );
  }
}