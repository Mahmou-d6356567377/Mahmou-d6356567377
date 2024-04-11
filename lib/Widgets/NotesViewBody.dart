import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:noteapp/Widgets/CustomAppBar.dart';
import 'package:noteapp/Widgets/NoteListView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [ 
        SizedBox(height: 10,),
        CustomAppBar(),
           Expanded(
             child: NoteListView(),
           ),
      ],
    );
  }
}

