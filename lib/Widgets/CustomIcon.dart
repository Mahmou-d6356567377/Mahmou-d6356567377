import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({super.key , required this.icon , this.Navigatepop =false ,required this.onPressed});
  final Icon icon;
   final  bool Navigatepop;
   final void Function()? onPressed ;
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
        child: IconButton(onPressed: onPressed, icon: icon)
      ),
    );
  }
}