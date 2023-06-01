import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget PhysisClass ({required double height, required double width, required String name, required String textButton, required List images}){
  return Container(
    margin: EdgeInsets.only(left: 14),
    child: ListTile(
      title: Text(
        name,
        style:const  TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Color(0xFF21242D)),
      ),
      trailing: Column(
        children: [
          SizedBox(height: height*(14/812),),
          Container(
            height: height*(32/812),
            width: width*(70/375),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color:const Color(0xFF458CFF),
            ),
            child: Center(child: Text(textButton,style:const TextStyle(fontSize: 14, fontWeight: FontWeight.w700,color: Color(0xFFFFFFFF)),)),
          ),
        ],
      ),

      subtitle: Container(
        margin: EdgeInsets.only(top: 16),
        // color: Colors.red,
        width: 32 + 20.0 * images.length,
        child: Stack(
          children: [
            for (int i = 0; i < images.length; i++)
              (i == 0)
                  ? Positioned(
                // left: 0,
                  child: SizedBox(
                      width: 32, height: 32, child: Image.asset(images[i])))
                  : Positioned(
                  left: 20.0 * i,
                  child: SizedBox(
                      width: 32,
                      height: 32,
                      child: Image.asset(images[i]))), // Positioned(
            Positioned(
                left: 20.0 * images.length,
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey),
                  child: Center(child: Text('+${images.length}')),
                ))
          ],
        ),
      ),
      )
  );
}
