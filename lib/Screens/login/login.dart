import 'package:flutter/material.dart';
import 'package:login_ui/components/background%202.dart';
import 'package:login_ui/components/background.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Background2(
          child: Stack(
        children: [
          Positioned(
            top: 40,
            right: 30,
            child:
                Image.asset("assets/images/main.png", width: size.width * .35),
          ),
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(


                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: ListTile(
                        title: Text(
                          'welcome',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              shadows: [
                                Shadow(
                                    blurRadius: 30,
                                    color: Colors.white,
                                    offset: Offset(4, 4))
                              ],
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF193566),
                              fontSize: 36),
                        ),
                        subtitle: Text(
                          'log in please',
                          style: TextStyle(
                              // foreground:Paint()..color=Colors.white..style=PaintingStyle.stroke..strokeWidth=1 ,
                              // shadows: [Shadow(blurRadius: 1,color: Colors.white,offset: Offset(1, 0) )],
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF586E90),
                              fontSize: 16),
                        ),
                      )),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    decoration: BoxDecoration(boxShadow: []),
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        labelText: "Username",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      obscureText: true,
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Text(
                      "Forgot your password?",
                      style: TextStyle(fontSize: 12, color: Color(0XFF2661FA)),
                    ),
                  ),
                  SizedBox(height: size.height * 0.05),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(80.0)),
                      textColor: Colors.white,
                      padding: const EdgeInsets.all(0),
                      child: Container(
                        alignment: Alignment.center,
                        height: 50.0,
                        width: size.width * 0.5,
                        decoration: new BoxDecoration(
                            borderRadius: BorderRadius.circular(80.0),
                            gradient: new LinearGradient(colors: [
                              Color.fromARGB(255, 255, 136, 34),
                              Color.fromARGB(255, 255, 177, 41)
                            ])),
                        padding: const EdgeInsets.all(0),
                        child: Text(
                          "LOGIN",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
