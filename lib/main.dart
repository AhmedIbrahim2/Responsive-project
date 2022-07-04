import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/home.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kprimaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)),
      home: HomeScreen(),
    );
  }
}
