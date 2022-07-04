import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/component/body.dart';
import 'package:flutter_application_1/components/footer.dart';
import 'package:flutter_application_1/components/header.dart';
import 'package:flutter_application_1/components/sideminu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 400),
        child: Sidemenu(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
            child: Container(
          width: size.width,
          constraints: BoxConstraints(minHeight: size.height),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(),
              body(),
              Footer(),
            ],
          ),
        )),
      ),
    );
  }
}
