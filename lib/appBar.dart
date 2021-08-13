
import 'dart:math';

// ignore: unused_import
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:my_portfolio/Middlebar.dart';
// ignore: import_of_legacy_library_into_null_safe

// ignore: unused_import
import 'package:my_portfolio/color.dart';
import 'package:my_portfolio/footBar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class ApppBar extends StatelessWidget {
  const ApppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: VxBox(
          child: VStack([
        ZStack([
          Imagewid(),
          VStack([
            customBar()
                .shimmer(
                    primaryColor: Vx.red400, secondaryColor: Vx.gray300)
                .p12(),
            20.heightBox,
            "Ishwarya"
                .text
                .extraBlack
                .lineHeight(1.0)
                .xl6
                .make()
                .shimmer(
                    primaryColor: Vx.orange100, secondaryColor: Vx.gray300)
                .p12(),
            20.heightBox,
            VxBox().color(Colors.white).size(70, 10).make().px12().shimmer(
                primaryColor: Vx.red400, secondaryColor: Vx.gray300),
                20.heightBox,
                socialMedias().p12(),
                270.heightBox,
                VStack([Middlepage().backgroundColor(Vx.red800),
                30.heightBox,
                ]),
                VxBox(
                  child: footBar(),
                  
                ).make()
                
          ])
        ])
      ])).make().scrollVertical(),
    );
  }
}

class Imagewid extends StatelessWidget {
  const Imagewid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "lib/assets/me.jpeg",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
        
      ),
    );
  }
}

// ignore: camel_case_types
class customBar extends StatelessWidget {
  const customBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 45.0,
      color: myColor.primarycolor,
    );
  }
}

// ignore: camel_case_types
class socialMedias extends StatelessWidget {
  const socialMedias({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HStack([
      Icon(
        AntDesign.linkedin_square,
        color: Vx.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/ishwarya-r-v-099512200/");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.github,
        color: Vx.white,
      ).mdClick(() {
        launch("https://github.com/Ishu259");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.instagram,
        color: Vx.white,
      ).mdClick(() {
        launch("https://www.instagram.com/rv.2592.rv/");
      }).make(),
      10.widthBox,
      Icon(
        AntDesign.twitter,
        color: Vx.white,
      ).mdClick(() {
        launch("https://twitter.com/Ishu_2592");
      }).make()
    ]);
  }
}
