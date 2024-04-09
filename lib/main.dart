import 'package:flutter/material.dart';
import 'package:noteapp/Views/NotesView.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData(
      brightness: Brightness.dark
    );
    return  MaterialApp(
      home: const NotesView(),
    );
  }
}