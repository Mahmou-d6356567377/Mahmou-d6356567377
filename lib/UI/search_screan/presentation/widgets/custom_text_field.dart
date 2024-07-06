import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mybook/utils/routes.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextField( 
        decoration: InputDecoration(
      
      
          prefix: IconButton(onPressed: (){
            GoRouter.of(context).pop();
          }, icon: const  Icon(Icons.arrow_back, color: Colors.white,)),
      

         suffix: IconButton(onPressed: (){
          GoRouter.of(context).push(AppRoutes.ss2);
         }, icon: const  Icon(Icons.keyboard_arrow_right_outlined , color: Colors.white,size: 30,)),
      
          hintText: ' Search',
          label: const  Icon(Icons.search),
          border: const  OutlineInputBorder(
          
            borderRadius: BorderRadius.all(Radius.circular(17)),
          ),
        ),
      ),
    );
  }
}