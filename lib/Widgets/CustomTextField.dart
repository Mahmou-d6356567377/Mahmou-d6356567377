import 'package:flutter/material.dart';
import 'package:noteapp/Constants/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12,),
      child: TextField(
        
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: KPrimaryColor,
        ),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(KPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder BuildBorder([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:  BorderSide(
            color: color?? Colors.white,
          ),
        );
  }
}