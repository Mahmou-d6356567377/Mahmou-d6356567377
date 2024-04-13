import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
       const  SizedBox(height: 15,),
        CustomTextField(hint: 'title', MaxLines: 2),
        CustomTextField(hint: 'content', MaxLines: 5),
      ],
    );
  }
}
