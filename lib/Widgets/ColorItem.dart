import 'package:flutter/material.dart';


 class ColorItem extends StatelessWidget {
  const ColorItem({super.key , required this.isActive , required this.color});
  final bool isActive ;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: isActive?  CircleAvatar(
        backgroundColor: Colors.white,
        radius: 25 ,
        child: CircleAvatar(
          radius: 23,
          backgroundColor: color,
        ),
      ):
       CircleAvatar(
        radius: 23,
        backgroundColor: color,
      )
    );
  }
}
