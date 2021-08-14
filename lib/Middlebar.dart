import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class Middlepage extends StatelessWidget {
  const Middlepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VStack([
      "-> Introduction:".text.bold.xl.color(Vx.gray300).make().p12(),
      "Enthusiastic Flutter Developer, C++ Programmer. Eager to learn and teach about Innovative Technologies. "
          .text
          .xl2
          .color(Colors.white)
          .make()
          .p12(),
      30.heightBox,
      "-> Projects:".text.bold.xl.color(Vx.gray300).make().p12(),
      20.heightBox,
      HStack([
        "Click below to view the Source Code".text.gray200.thin.make(),
        10.widthBox,
        icoon()
      ]).centered(),
      20.heightBox,
      VxSwiper(
        items: [
          "Book Shop System"
              .text
              .color(Colors.white)
              .bold
              .wide
              .xl
              .center
              .make()
              .box
              .p8
              .roundedLg
              .square(200)
              .alignCenter
              .neumorphic(color: Vx.red800, elevation: 5.0, curve: VxCurve.flat)
              .make()
              .mdClick(() {
            launch("https://github.com/Ishu259/book-shop-system");
          }).make(),
          "My Portfolio App"
              .text
              .color(Colors.white)
              .bold
              .wide
              .xl
              .center
              .make()
              .box
              .p8
              .roundedLg
              .square(200)
              .alignCenter
              .neumorphic(color: Vx.red800, elevation: 6.0, curve: VxCurve.flat)
              .make()
              .mdClick(() {
            launch("https://github.com/Ishu259/Portfolio-App");
          }).make()
        ],

        height: 170,
        enlargeCenterPage: true,
        //autoPlayCurve: Curves.fastOutSlowIn,
        autoPlay: true,
        autoPlayInterval: 2.seconds,
      )
    ]);
  }
}

// ignore: camel_case_types
class icoon extends StatelessWidget {
  const icoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(AntDesign.downcircle);
  }
}
