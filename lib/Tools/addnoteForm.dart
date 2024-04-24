import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:intl/intl.dart';
import 'package:noteapp/Widgets/ColorListView.dart';
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
  DateTime datef = DateTime.now();
  String? title , subtitle ;
 
  @override
  Widget build(BuildContext context) {
   String formattedDate = DateFormat.yMEd().format(datef);
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

          ColorsListView(),
          CustomButton(onTap: (){
            
            print('Click on add button');

             if(formkey.currentState!.validate()){

              fillNodeModel(formattedDate, context);

             }else{

              AutovalidateMode.disabled;
              //this to do validate automatically without doing anything 

             }
          },),
        ],
      ),
    );
  }

  void fillNodeModel(String formattedDate, BuildContext context) {
     formkey.currentState!.save();
    var noteModel = NoteModel(title: title!, content: subtitle!, date: formattedDate, color: Colors.blue.value);
    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
  }
}


