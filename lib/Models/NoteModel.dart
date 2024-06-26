
import 'package:hive/hive.dart';

  part 'NoteModel.g.dart';
@HiveType(typeId: 0)

class NoteModel extends HiveObject{
  @HiveField(0)
   String title;
    @HiveField(1)
  String content;
  @HiveField(3)
  final String date;
    @HiveField(4)
   int color;

  NoteModel({required this.title, required this.content, required this.date, required this.color});
}