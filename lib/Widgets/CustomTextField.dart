import 'package:flutter/material.dart';
import 'package:noteapp/Constants/Constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,  this.MaxLines=1, this.onSaved , this.onChanged});
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  final String hint;
  final int MaxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 12,),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if(value?.isEmpty ?? true){
            return 'Field is required ';
          }else{
            return null;
          }
        },
        maxLines: MaxLines,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
        hintText: hint,
      
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
          border: BuildBorder(),
          enabledBorder: BuildBorder(),
          focusedBorder: BuildBorder(kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder  BuildBorder([color]) {
    return OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide:  BorderSide(
            color: color?? Colors.white,
          ),
        );
  }
}