import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/minuItem.dart';
import 'package:flutter_application_1/responsive.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (!ismobile(context)) ? DesktopFooter() : MobileFooter();
  }
}

class DesktopFooter extends StatelessWidget {
  const DesktopFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Text(
              'All Right Reserved',
              style: TextStyle(fontSize: 10),
            ),
          ),
          Expanded(
              flex: 2,
              child: Row(
                children: [
                  navItem(title: 'Twitter', tapEvent: () {}),
                  navItem(title: 'Facebook', tapEvent: () {}),
                  navItem(title: 'Instagram', tapEvent: () {}),
                  navItem(title: 'LinkedIn', tapEvent: () {}),
                ],
              ))
        ],
      ),
    );
  }
}

class MobileFooter extends StatelessWidget {
  const MobileFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Column(
        children: [
          Text(
            'All Started Reserved',
            style: TextStyle(fontSize: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              navItem(title: 'Twitter', tapEvent: () {}),
              navItem(title: 'Facebook', tapEvent: () {}),
              navItem(title: 'Gmail', tapEvent: () {}),
              navItem(title: 'LinkedIn', tapEvent: () {}),
            ],
          )
        ],
      ),
    );
  }
}
