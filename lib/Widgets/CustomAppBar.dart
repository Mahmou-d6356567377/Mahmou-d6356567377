import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomIcon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key , required this.title, required this.icon , this.Navpop=false , required this.onPressed});
  final void Function()? onPressed;
 final bool Navpop;
 final String title;
 final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [ 
          Text(title,style: TextStyle(color: Colors.white,
          fontSize: 28,
           ),),
           Spacer(),
           CustomIcon(icon: icon,Navigatepop: Navpop, onPressed:  onPressed ,),
        ],
      ),
    );
  }
}

