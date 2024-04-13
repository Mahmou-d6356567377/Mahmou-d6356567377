import 'package:flutter/material.dart';
import 'package:noteapp/Constants/Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
       
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: KPrimaryColor,
        ),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:  const Center(child: 
        Text('Add',style: TextStyle(color: Colors.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,),)),
      ),
    );
  }
}