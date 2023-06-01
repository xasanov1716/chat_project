import 'package:flutter/material.dart';

import '../MyIcons/my_icons.dart';


Widget  Messages (String name, String text, String image, double height, double width){
  return Container(
    margin:const  EdgeInsets.only(left: 4,right: 24),
    child: ListTile(
      title: Text(name,style:const TextStyle(fontWeight: FontWeight.w500,fontSize: 16,color: Color(0xFF21242D)),),
      subtitle: Text(text,style:const  TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF757C8E)),),
      leading: Image.asset(image,height: height*(44/812),width: width*(44/375),),
    ),
  );
}
