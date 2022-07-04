import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/minuItem.dart';

class Sidemenu extends StatelessWidget {
  const Sidemenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            navItem(title: 'Home', tapEvent: () {}),
            SizedBox(
              height: 10,
            ),
            navItem(title: 'Contact Us', tapEvent: () {}),
            SizedBox(
              height: 10,
            ),
            navItem(title: 'Donate', tapEvent: () {}),
            SizedBox(
              height: 10,
            ),
            navItem(title: 'Login', tapEvent: () {}),
            SizedBox(
              height: 10,
            ),
            navItem(title: 'Shop', tapEvent: () {}),
          ],
        ),
      )),
    );
  }
}
