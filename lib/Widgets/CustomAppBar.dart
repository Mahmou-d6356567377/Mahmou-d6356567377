import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomSearchIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [ 
          Text('Notes',style: TextStyle(color: Colors.white,
          fontSize: 28,
           ),),
           Spacer(),
           CustomSearchIcon(),
        ],
      ),
    );
  }
}

