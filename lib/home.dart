import 'package:flutter/material.dart';
import 'package:my_portfolio/appBar.dart';
import 'package:my_portfolio/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: myColor.secondarycolor,
      child: ApppBar(),
    );
  }
}
