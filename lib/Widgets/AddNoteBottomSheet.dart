import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:noteapp/Cubits/add_note_cubit/add_note_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Tools/addnoteForm.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if(state is AddNoteFailure){
            print('failed ${state.errMessage}');
          const snackBar = SnackBar(
            content: Text('There is something wrong in AddNoteBottomsheet '),
);
           ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
          if(state is AddNoteSuccess){
               Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: (state is AddNoteLoading)? true:false,
            child: const  AddNoteForm());
        },
      ),
    );
  }
}
