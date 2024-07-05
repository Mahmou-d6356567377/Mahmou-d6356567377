import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../utils/styles.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Row( 
      children: [ 
           Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
                   child: Icon(FontAwesomeIcons.star, color: Color.fromARGB(255, 217, 192, 47),),
                     ),

                     Text('3',style: style12,),
                     Text('(2322)',style: style12,),
                     
      ],
    );
  }
}