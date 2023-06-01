import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '';
import '../MyIcons/my_icons.dart';

Widget rowText (double width, String image, double height,String name){
  return Row(
    children: [
      SizedBox(
        width: width * (25 / 375),
      ),
       Text(
        name,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF121214)),
      ),
      SizedBox(
        width: width * (244/ 375),
      ),
      SvgPicture.asset(
        MyIcon.plus,
        height: height * (32 / 812),
        width: width * (32 / 375),
      ),
    ],
  );
}

Widget longText (double width, String image, double height,String name){
  return Row(
    children: [
      SizedBox(
        width: width * (25 / 375),
      ),
      Text(
        name,
        style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF121214)),
      ),
      SizedBox(
        width: width * (212/ 375),
      ),
      SvgPicture.asset(
        MyIcon.plus,
        height: height * (32 / 812),
        width: width * (32 / 375),
      ),
    ],
  );
}