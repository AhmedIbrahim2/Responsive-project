import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';

class navItem extends StatelessWidget {
  final String title;
  final GestureTapCallback tapEvent;
  navItem({Key? key, required this.title, required this.tapEvent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      hoverColor: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title,
          style: TextStyle(color: ktextColor, fontWeight: FontWeight.w300),
        ),
      ),
    );
  }
}
