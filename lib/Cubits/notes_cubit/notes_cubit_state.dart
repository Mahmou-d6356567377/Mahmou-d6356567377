part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}
final class NotesCubitLoading extends NotesCubitState {}
final class NotesCubitFailed extends NotesCubitState {}
final class NotesCubitsuccessed extends NotesCubitState {
  final String errMassage;

  NotesCubitsuccessed({required this.errMassage});
}
