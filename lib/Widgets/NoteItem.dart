import 'package:flutter/material.dart';
import 'package:noteapp/Views/EditNoteView.dart';

class NoteItem extends StatelessWidget {
   NoteItem({super.key, required this.color});
  
   final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> EditNoteView()));
        },
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: color,
          ),
          child: Row(
            children: [ 
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: SingleChildScrollView( 
                    child: Column(
                      children: [ 
                        ListTile(
                          title: Text('Flutter tips',style: TextStyle(
                            fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),), 
                        subtitle: Text('Build your careed with Mahmoud Ashraf ',style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),),
                        )
                       
                        
                      ],
                    ),
                  ),
                ),
              ),
                Expanded(
                flex: 1,
                child: Column(
                  children: [ 
                    Spacer(flex: 1,),
                  IconButton(onPressed: (){}, icon: Icon(Icons.delete,
                  color: Colors.black,),),
                  Spacer(flex: 3,),
                    Text('May  21,2022',style: TextStyle(
                      color: Colors.black,
                    ),),
                    Spacer(flex: 1,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}