import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/AddNoteBottomSheet.dart';
import 'package:noteapp/Widgets/NotesViewBody.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       body: const NotesViewBody(),
       floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ) ,
          context: context, builder: (context){
          return const AddNoteBottomSheet();
        });
       },
       child: Icon(Icons.add),
       mini: true,
       
       ),
      ),
    );
  }
}

