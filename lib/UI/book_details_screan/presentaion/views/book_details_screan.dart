import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/book_list_item.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/book_list_view.dart';
import 'package:mybook/UI/home_screan/presentation/View/widgets/rating_widget.dart';
import 'package:mybook/utils/constants.dart';

import '../../../../utils/styles.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const  Color(backGroundColor1),
        leading: IconButton(onPressed: (){

          GoRouter.of(context).pop();
        }, icon: const Icon(Icons.arrow_back, color: Colors.white,)),
        actions: [ 
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.download, color: Colors.white,)),
        ],
      ),

      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
             Color(backGroundColor1),
             Color(backGroundColor2),
             Color(backGroundColor3),
             Color(backGroundColor4),
             Color(backGroundColor5),
             Color(backGroundColor6),
             Color(backGroundColor7),
            ]
          )
        ),
        child: Column( 
          children: [ 
         Expanded(
          flex: 6,
           child: ClipRRect(
                   child: SizedBox(
            height: 150,
            width: 150,
            child: Image.asset(KtestImage, fit: BoxFit.fill,)),
                 ),
         ),



        Expanded(
          flex: 1,
          child: Text('Cross Platform UIs with Flutter ', maxLines: 2,overflow: TextOverflow.ellipsis, 
                     style: style18.copyWith(fontFamily: 'GT'),),
        ), 
        const Expanded(
            flex: 1,
            child:  Text('W.J. Tuovila', maxLines: 1,overflow: TextOverflow.ellipsis, 
                     style: style12),
          ), 

         const  Expanded(flex : 1, child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             RatingWidget(),
           ],
         )),

          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(17),
                child: Row(
                  children: [ 
                     Expanded(child: Container( color:  Colors.white , child: Center(child: Text('434', style: style14.copyWith(color: Colors.white),)))),
                    Expanded(child: Container(color: const Color(backGroundColor6) ,  child:  Center(child: Text('FREE PREVIEW', style: style14.copyWith(color: Colors.black),)))),
                              
                  ],
                ),
              ),
            ),
          ), 

         const Expanded(flex: 1 , child:    Row(children: [ Text('You can also like ', style: style16,)],)), 
        const  Expanded(flex : 4 , child: BookListView()), 
         const   SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}