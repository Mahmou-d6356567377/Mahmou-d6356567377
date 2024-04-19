part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}
final class NotesCubitLoading extends NotesCubitState {}
final class NotesCubitFailed extends NotesCubitState {
    final String errMassage;

  NotesCubitFailed( this.errMassage);

}
final class NotesCubitsuccessed extends NotesCubitState {
   
   final List<NoteModel> notes;

  NotesCubitsuccessed( this.notes);
}
