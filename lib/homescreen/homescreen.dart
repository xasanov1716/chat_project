import 'package:chat_project/MyIcons/my_icons.dart';
import 'package:chat_project/widget/body.dart';
import 'package:chat_project/widget/messages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/listTile.dart';

final List<String> MyList = [
  MyIcon.user1,
  MyIcon.user2,
  MyIcon.user3,
  MyIcon.user4,
  MyIcon.user5
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFF5F5F5),
        appBar: AppBar(
          leading: Container(
            padding: EdgeInsets.all(8),
            height: 32,
            width: 32,
            child: SvgPicture.asset(MyIcon.back),
          ),
          elevation: 0,
          backgroundColor: Color(0xFFF5F5F5),
          title: Text(
            'Chat',
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                color: Color(0xFF21242D)),
          ),
          actions: [
            SvgPicture.asset(
              MyIcon.search,
              alignment: Alignment.centerRight,
            ),
            SizedBox(
              width: width * (16 / 375),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: height * (16 / 812),
            ),
            rowText(width, MyIcon.plus, height, 'Group'),
            SizedBox(
              height: height * (31 / 812),
            ),
            Container(
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFE6E8EC),
                )),
            SizedBox(
              height: height * (24 / 812),
            ),
            PhysisClass(
                height: height,
                width: width,
                name: 'Physis Class',
                textButton: 'Join',
                images: [MyIcon.david, MyIcon.alex, MyIcon.sanderly]),
            SizedBox(
              height: height * (40 / 812),
            ),
            PhysisClass(
                height: height,
                width: width,
                name: 'Biology Class',
                textButton: 'Join',
                images: [MyIcon.alex, MyIcon.erward, MyIcon.sanderly,MyIcon.david]),
            SizedBox(
              height: height * (32 / 812),
            ),
            longText(width, MyIcon.plus, height, 'Messages'),
            SizedBox(
              height: height * (31 / 812),
            ),
            Container(
                margin: EdgeInsets.only(left: 24, right: 24),
                child: Divider(
                  height: 1,
                  thickness: 1,
                )),
            SizedBox(
              height: height * (8 / 812),
            ),
            Messages('Sanderly Suly', 'Have you done your homework yet?',
                MyIcon.sanderly, height, width),
            SizedBox(
              height: height * (14 / 812),
            ),
            Messages('Erward Dory', 'Hi, how old are you?', MyIcon.erward,
                height, width),
            SizedBox(
              height: height * (14 / 812),
            ),
            Messages('Alex Fendere', 'How are you doing?', MyIcon.alex, height,
                width),
            SizedBox(
              height: height * (14 / 812),
            ),
            Messages('David Bob', 'No, i am best', MyIcon.david, height, width),
          ],
        ));
  }
}
