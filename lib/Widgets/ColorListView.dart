import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/ColorItem.dart';


class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(itemBuilder:(context, index)=> ColorItem() , 
      itemCount: 10,
      scrollDirection: Axis.horizontal,
      ),
    );
  }
}