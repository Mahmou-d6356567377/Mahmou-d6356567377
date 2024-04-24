
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Widgets/CustomAppBar.dart';
import 'package:noteapp/Widgets/CustomTextField.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key , required this.note});
   final NoteModel note;
   
  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
    String? titlee;
     String? contente;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body:Padding(
        padding: const  EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [ 
         const     SizedBox(height: 30,),
            CustomAppBar(title: 'Edit', icon:  const  Icon(Icons.check), Navpop: true,onPressed:  (){
              widget.note.title = titlee??widget.note.title;
             widget.note.content = contente??widget.note.content;
             widget.note.save();
             BlocProvider.of<NotesCubit>(context).fetchallNotes();
             Navigator.pop(context);
               BlocProvider.of<NotesCubit>(context).notes;
            },),
         const      SizedBox(height: 50,),
             CustomTextField(hint: 'Title', onChanged: (value){
               titlee =value;
             },),
             CustomTextField(hint: 'Content',MaxLines: 6,onChanged:  (value){
                  contente =value;
          },),
          ],
        ),
      ),
    );
  }
}