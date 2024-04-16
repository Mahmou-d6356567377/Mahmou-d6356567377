import 'package:flutter/material.dart';

import '../Widgets/CustomButton.dart';
import '../Widgets/CustomTextField.dart';


class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formkey =GlobalKey();
  String? title , subtitle ;
  @override
  Widget build(BuildContext context) {
    return Form(
       key: formkey,
       autovalidateMode: AutovalidateMode.disabled ,
      child: Column(
        children: [ 
         const  SizedBox(height: 15,),
          CustomTextField(hint: 'title',onSaved: (value){
           title = value;
          },),
          CustomTextField(hint: 'content', MaxLines: 5, onSaved: (value){
            subtitle = value;
          },),
          CustomButton(onTap: (){
             if(formkey.currentState!.validate()){
              formkey.currentState!.save();
             }else{
              AutovalidateMode.disabled;
              //this to do validate automatically without doing anything 

             }
          },),
        ],
      ),
    );
  }
}

 