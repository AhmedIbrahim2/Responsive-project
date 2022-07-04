import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/minuItem.dart';
import 'package:flutter_application_1/responsive.dart';
import 'package:google_fonts/google_fonts.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: 50,
          ),
          SizedBox(
            width: 10,
          ),
          Text('Peta Buaety', style: GoogleFonts.reenieBeanie(fontSize: 18)),
          Spacer(),
          if (!ismobile(context))
            Row(
              children: [
                navItem(title: 'Home', tapEvent: () {}),
                navItem(title: 'Contact Us', tapEvent: () {}),
                navItem(title: 'Donate', tapEvent: () {}),
                navItem(title: 'Login', tapEvent: () {}),
                navItem(title: 'Shop', tapEvent: () {}),
              ],
            ),
          if (ismobile(context))
            IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: Icon(Icons.menu))
        ],
      ),
    );
  }
}
