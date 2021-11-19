import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:login_ui/components/background%202.dart';
import 'package:login_ui/utilities/constants.dart';
import 'package:login_ui/widgets/widgets.dart';

class Home extends StatelessWidget {
  var professorColour = kColor1;
  var studentColour = kColor2;

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
                height: size.height * .4,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin:
                        EdgeInsetsDirectional.only(bottom: size.height * .44),
                    child: Text(
                      'Welcome',
                      style: TextStyle(
                          color: Color(0xFF193566),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 4,
                          shadows: [
                            Shadow(
                                color: Color(0XFF97A7C3),
                                offset: Offset(5, 5),
                                blurRadius: 10)
                          ]),
                    ),
                  ),
                  Neumorphic(
                    child: Container(
                      height: 50,
                      width: 180,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: TextButton(
                        onLongPress: () {},
                        onPressed: () {
                          Navigator.of(context).pushNamed('Login');
                        },
                        child: Text(
                          'Professor',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: professorColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    style: NeumorphicStyle(
                        depth: 10,
                        shadowDarkColor: Colors.white,
                        shadowLightColor: Color(0XFF97A7C3),
                        oppositeShadowLightSource: true,
                        lightSource: LightSource.topLeft,
                        border: NeumorphicBorder(
                            color: Color(0XFF84BBE4),
                            width: .5,
                            isEnabled: false),
                        boxShape: NeumorphicBoxShape.stadium(),
                        intensity: .8,
                        shape: NeumorphicShape.flat,
                        surfaceIntensity: .5),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Neumorphic(
                    child: Container(
                      height: 50,
                      width: 180,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed('Login');
                        },
                        child: Text(
                          'Student',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: studentColour,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                      ),
                    ),
                    style: NeumorphicStyle(
                        depth: 10,
                        shadowDarkColor: Colors.white,
                        shadowLightColor: Color(0XFF97A7C3),
                        oppositeShadowLightSource: true,
                        lightSource: LightSource.topLeft,
                        border: NeumorphicBorder(
                            color: Color(0XFF84BBE4),
                            width: .5,
                            isEnabled: false),
                        boxShape: NeumorphicBoxShape.stadium(),
                        intensity: .8,
                        shape: NeumorphicShape.flat,
                        surfaceIntensity: .5),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
