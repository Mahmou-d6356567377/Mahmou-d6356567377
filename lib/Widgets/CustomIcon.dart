import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key , required this.icon , this.Navigatepop =false });
  final Icon icon;
   final  bool Navigatepop;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        if(Navigatepop){
          Navigator.pop(context);
        }
      },
      child: Container(
        height: 37 ,
        width: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white.withOpacity(.1),
        ),
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}