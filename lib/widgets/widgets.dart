import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class MyButton extends StatelessWidget {

  var widthContainer;
  var heightContainer;
  var colorContainer;
  var childContainer;

  MyButton({this.widthContainer,this.childContainer,this.heightContainer});

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      child: Container(
        height: heightContainer,
        width: widthContainer,
        color: colorContainer,
        child: childContainer,
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
    );
  }
}

