import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/newest_book_list.dart';
import 'package:mybook/UI/search_screan/presentation/widgets/custom_text_field.dart';

class SeachScrean extends StatelessWidget {
  const SeachScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomTextField(),
            ),
            Expanded(
                child: NewestBookList(
              isScroll: false,
            )),
          ],
        ),
      ),
    );
  }
}
