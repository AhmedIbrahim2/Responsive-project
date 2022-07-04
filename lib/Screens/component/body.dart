import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/main_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/responsive.dart';

class body extends StatelessWidget {
  const body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(right: !ismobile(context) ? 40 : 0),
            child: Column(
              mainAxisAlignment: !ismobile(context)
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.center,
              crossAxisAlignment: !ismobile(context)
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.center,
              children: [
                if (ismobile(context))
                  Image.asset(
                    'assets/images/main.png',
                    height: size.height * .3,
                  ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Buy',
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800,
                        color: ktextColor,
                      )),
                  TextSpan(
                      text: 'Cruely Free',
                      style: TextStyle(
                        fontSize: isDesktop(context) ? 64 : 32,
                        fontWeight: FontWeight.w800,
                        color: kprimaryColor,
                      ))
                ])),
                Text(
                  'MakeUp Products',
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 64 : 32,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'Online Today!',
                  style: TextStyle(
                      fontSize: isDesktop(context) ? 64 : 32,
                      fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 10,
                  children: [
                    MainButton(
                        color: kprimaryColor,
                        tapevent: () {},
                        title: 'Get Started'),
                    SizedBox(
                      width: 10,
                    ),
                    MainButton(
                        color: ksecondaryColor,
                        tapevent: () {},
                        title: 'Watch Video'),
                  ],
                )
              ],
            ),
          )),
          if (isDesktop(context) || isTab(context))
            Expanded(
                child: Image.asset(
              'assets/images/main.png',
              height: size.height * .7,
            ))
        ],
      ),
    );
  }
}
