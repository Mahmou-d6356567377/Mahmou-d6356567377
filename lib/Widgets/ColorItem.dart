import 'package:flutter/material.dart';


 class ColorItem extends StatelessWidget {
  const ColorItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: const CircleAvatar(
        radius: 25,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
