import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Constants/Constants.dart';
import 'package:noteapp/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Views/NotesView.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  MultiBlocProvider(
      providers: [BlocProvider(create: (context)=> AddNoteCubit())],
      child: MaterialApp(
      
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: const NotesView(),
      ),
    );
  }
}