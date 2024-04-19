import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../Constants/Constants.dart';
import '../../Models/NoteModel.dart';

part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchallNotes() async{
    emit(NotesCubitLoading());
   try {
  var notesBox = Hive.box<NoteModel>(kNotesBox);
    List<NoteModel> notes =notesBox.values.toList();
  emit(NotesCubitsuccessed(notes));
} on Exception catch (e) {
  emit(NotesCubitFailed('There is something wrong in AddNoteCubit : ${e.toString()} '));
}
  }
}
