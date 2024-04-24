import 'package:flutter/material.dart';
import 'package:noteapp/Widgets/ColorItem.dart';


class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentindex =0 ;
  List<Color> colors=[
  const  Color(0xffBACDB0),
  const  Color(0xff729B79),
  const  Color(0xff729B79),
  const  Color(0xff475B63),
  const  Color(0xff2E2C2F),
  const  Color(0xffCED4DA),
  const  Color(0xffADB5BD),
  const  Color(0xffF48C06),
  const  Color(0xffDC2F02),
  const  Color(0xff9D0208),
  const  Color(0xff9D0208),
  const  Color(0xff6A040F),
  const  Color(0xff370617),
  const  Color(0xff70E000),
  const  Color(0xff008000),
  const  Color(0xff007200),
  const  Color(0xff006400),
  const  Color(0xff004B23),
  const  Color(0xffFEC89A),
    const  Color(0xffFEC89A),
    const  Color(0xff72EFDD),
    const  Color(0xff4EA8DE),
    const  Color(0xff5E60CE),
    const  Color(0xff7400B8),

  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76,
      child: ListView.builder(itemBuilder:(context, index)=>  Padding(
        padding:  const EdgeInsets.symmetric(horizontal: 3),

        child: GestureDetector(
          
          onTap: (){
            currentindex =index;
            setState(() {
              
            });
          },
          
          child: ColorItem(isActive: currentindex== index, color:  colors[index],)),
      ) , 
      itemCount: colors.length,
      scrollDirection: Axis.horizontal,
      ),
    );
  }
}