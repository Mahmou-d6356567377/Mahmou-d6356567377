import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/NoteItem.dart';




class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  final data= const [
    Colors.greenAccent,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.pinkAccent,
    Colors.orangeAccent,
    Colors.yellowAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
       scrollDirection: Axis.vertical,
        itemCount: 20,
      
        itemBuilder: (BuildContext context, int index) {
         int d = index;
            final colorIndex = d % data.length;
          return  NoteItem(color: data[colorIndex ],);
        },
      ),
    );
  }
}
