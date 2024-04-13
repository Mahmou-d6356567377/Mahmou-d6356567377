import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/CustomAppBar.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      
      body:Padding(
        padding:  EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [ 
          SizedBox(height: 30,),
            CustomAppBar(title: 'Edit', icon: Icon(Icons.check), Navpop: true,),
          ],
        ),
      ),
    );
  }
}