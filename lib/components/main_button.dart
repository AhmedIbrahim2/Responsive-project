import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String title;
  final Color color;
  final GestureTapCallback tapevent;
  const MainButton(
      {Key? key,
      required this.color,
      required this.tapevent,
      required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: TextButton(
          onPressed: tapevent,
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(color),
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 15, vertical: 15))),
          child: Text(
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          )),
    );
  }
}
