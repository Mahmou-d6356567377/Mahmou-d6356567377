import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import '../../Constants/Constants.dart';
import '../../Models/NoteModel.dart';
part 'notes_cubit_state.dart';

class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

List<NoteModel>? notes ;
  fetchallNotes() async{

  var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes =notesBox.values.toList();
    emit(NotesCubitSuccess());
}
}