import 'package:flutter/material.dart';
import 'package:noteapp/Constants/Constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key , this.onTap});
  
  final bool lsLoading = false; 
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
         
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: kPrimaryColor,
          ),
          width: MediaQuery.of(context).size.width,
          height: 50,
          child:   Center(child: 
          lsLoading ? const CircularProgressIndicator( color:  Colors.black,)  : const Text('Add',style: TextStyle(color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,),)),
        ),
      ),
    );
  }
}