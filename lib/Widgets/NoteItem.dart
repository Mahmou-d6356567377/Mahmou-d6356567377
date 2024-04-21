import 'package:flutter/material.dart';
import 'package:noteapp/Models/NoteModel.dart';
import 'package:noteapp/Views/EditNoteView.dart';

class NoteItem extends StatelessWidget {
    NoteItem({super.key,required this.note });
  final NoteModel note;
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
            color: Color(note.color),
          ),
          child: Row(
            children: [ 
               Expanded(
                flex: 3,
                child: Padding(
                  padding: const  EdgeInsets.only(left: 16),
                  child: SingleChildScrollView( 
                    child: Column(
                      children: [ 
                        ListTile(
                          title: Text(note.title,style: const  TextStyle(
                            fontFamily: 'Poppins',
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),), 
                        subtitle: Text(note.content,style:  TextStyle(
                          color: Colors.black.withOpacity(.4),
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
                   const  Spacer(flex: 1,),

                  IconButton(onPressed: (){
                   note.delete();

                  }, 
                  icon:const  Icon(Icons.delete,
                  color: Colors.black,),),

                  const   Spacer(flex: 3,),

                   Text(note.date,
                    style:  TextStyle(
                  color: Colors.black.withOpacity(.4),
                    ),
                    ),

                   const  Spacer(flex: 1,),
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