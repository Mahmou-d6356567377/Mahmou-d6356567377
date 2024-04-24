import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/Widgets/CustomAppBar.dart';
import 'package:noteapp/Widgets/NoteListView.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override

  
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchallNotes();
    super.initState();
    
  }
  Widget build(BuildContext context) {
    return  Column(
      children: [ 
        const SizedBox(height: 20,),
        CustomAppBar(title: 'Note', icon: const Icon(Icons.search),onPressed: (){},),
         const   Expanded(
             child: NoteListView(),
           ),
      ],
    );
  }
}

