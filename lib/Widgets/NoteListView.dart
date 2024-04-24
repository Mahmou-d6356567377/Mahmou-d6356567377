import 'package:flutter/material.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Widgets/NoteItem.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return BlocBuilder<NotesCubit, NotesCubitState>(
      builder: (context, state) {
      List<NoteModel> notes=BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: notes.length,
            itemBuilder: (BuildContext context, int index) {

              return NoteItem(
              note:  notes[index],
              );
            },
          ),
        );
      },
    );
  }
}
