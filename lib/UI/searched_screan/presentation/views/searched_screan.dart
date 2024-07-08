import 'package:flutter/material.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/newest_book_list.dart';
import 'package:mybook/utils/constants.dart';

class SearchedScrean extends StatelessWidget {
  const SearchedScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 21, 61, 86),
            //floating: true,
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(KlogoImage),
            ),
          ),
          const SliverToBoxAdapter(
            child: NewestBookList(isScroll: true),
          )
        ],
      ),
    );
  }
}
