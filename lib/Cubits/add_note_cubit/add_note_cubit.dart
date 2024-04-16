import 'package:hive/hive.dart';
import 'package:noteapp/Constants/Constants.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async{
   try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
  await notesBox.add(note);
  emit(AddNoteSuccess());
} on Exception catch (e) {
  emit(AddNoteFailure('There is something wrong in AddNoteCubit : ${e.toString()} '));
}
  }
}
