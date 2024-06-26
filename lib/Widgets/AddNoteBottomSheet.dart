import 'package:flutter/material.dart';
import 'package:noteapp/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/Cubits/notes_cubit/notes_cubit_cubit.dart';
import '../Tools/addnoteForm.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed ${state.errMessage}');
            const snackBar = SnackBar(
              content: Text('There is something wrong in AddNoteBottomsheet '),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchallNotes();
            Navigator.pop(context);
            
          }
        },
        builder: (context, state) {
          
          return AbsorbPointer(
            absorbing:  state is AddNoteLoading ? true : false,
            child: Padding(
              padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child:  AddNoteForm()),
            ));
        },
      ),
    );
  }
}
