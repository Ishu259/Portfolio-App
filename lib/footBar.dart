import 'package:flutter/material.dart';
import 'package:my_portfolio/appBar.dart';


import 'package:velocity_x/velocity_x.dart';

// ignore: camel_case_types
class footBar extends StatelessWidget {
  const footBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBlock(
      children: [
        "Want to discuss about projects? \nLets talk!"
            .text
            .color(Colors.white)
            .xl2
            .semiBold
            .center
            .make()
            .p12()
            .box
            .color(Vx.red900)
            .make(),
            
        VxCard("ishwaryaece5@gmail.com".text.bold.xl.color(Vx.white).center.make().p12()).red900.elevation(0.0)
            .make(),
            20.heightBox,
            
            customBar().shimmer(primaryColor: Vx.red200,secondaryColor: Vx.gray300),
            20.heightBox,
            "Thanks for reviewing".text.thin.center.xl.wide.color(Vx.gray300).make(),
            20.heightBox,
            "Learn more,Teach more!".text.bold.center.xl2.color(Colors.white).make(),
            20.heightBox
      ]
      
    ).backgroundColor(Vx.red900)
    ;
  }
}

// ignore: camel_case_types
