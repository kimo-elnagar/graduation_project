import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:login_ui/Screens/home/home.dart';
import 'package:login_ui/components/background%202.dart';
import 'package:login_ui/components/background.dart';


class ScratchScreen extends StatelessWidget {
  const ScratchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Background2(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Image.asset(
                "assets/images/Logo.png",
                height: size.height * .5,
              ),
            ),

          ],
        ),
      ),
    );
  }
}



