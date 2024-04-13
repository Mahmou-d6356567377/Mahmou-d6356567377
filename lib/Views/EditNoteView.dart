import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/NotesViewBody.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(onPressed: (){
        Navigator.pop(context);
      }, icon: Icon(Icons.arrow_back,color: Colors.white,)),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          color: Colors.black,
        ),
      ),
    );
  }
}