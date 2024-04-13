import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomButton.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ 
         const  SizedBox(height: 15,),
          CustomTextField(hint: 'title',),
          CustomTextField(hint: 'content', MaxLines: 5),
          CustomButton(),
        ],
      ),
    );
  }
}

