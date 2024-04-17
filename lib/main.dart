import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:noteapp/Constants/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Simple_bloc_observer.dart';
import 'package:noteapp/Views/NotesView.dart';

void main() async{
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
   
    return  MaterialApp(
    
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const NotesView(),
    );
  }
}