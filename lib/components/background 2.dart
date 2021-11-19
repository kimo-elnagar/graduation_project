import 'package:flutter/material.dart';

class Background2 extends StatelessWidget {
  final Widget child;

  const Background2({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[

          Positioned(
            top: 8,
            left: 80,
            child: Image.asset(
              "assets/images/Shape2.png",
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/Shape.png",
            ),
          ),
          Positioned(
            top: 89,
            left:0,
            child: Image.asset(
              "assets/images/Shape-1.png",
            ),
          ),


          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "assets/images/Shape-2.png",
            ),
          ),
          child
        ],
      ),
    );
  }
}
