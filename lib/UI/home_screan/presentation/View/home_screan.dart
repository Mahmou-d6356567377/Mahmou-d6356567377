import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/Newst_book_item.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/book_list_view.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/custom_appbar.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/newest_book_list.dart';
import 'package:mybook/utils/constants.dart';
import 'package:mybook/utils/styles.dart';

class HomeScrean extends StatelessWidget {
  const HomeScrean({super.key});

  @override
  Widget build(BuildContext context) {
    return     Scaffold(
    
      body:   SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
          const   SliverToBoxAdapter(child:  CustomAppBar(),), 
          const  SliverToBoxAdapter(child: SizedBox( height: 200, child:  BookListView(),) ,), 
          SliverToBoxAdapter(child: Row(children: [Text('  NEWEST BOOKS', style: style14.copyWith( fontFamily: 'Po' ),), ], ),), 
          const SliverToBoxAdapter(child: Expanded(child:  NewestBookList(isScroll: true)) ,),
          ],
        ), 
      ),
    );
  }
}