import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_login_screen/forgot_password.dart';
import 'package:flutter_app_login_screen/signup_page.dart';
import 'package:flutter_app_login_screen/style.dart';
// import 'package:flutter_app_login_screen/style.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:splashscreen/splashscreen.dart';

import 'Network/api.dart';
import 'login_page.dart';
// import 'package:flutter_splash_screen/flutter_splash_screen.dart';

void main() => runApp(myapp());

class myapp extends StatelessWidget {
  static const MaterialColor vcolor =
      const MaterialColor(0xff37004d, const <int, Color>{
    50: const Color(0xff5c6bf7),
    100: const Color(0xffeb282e),
    200: const Color(0xff32c246),
    300: const Color(0xff37004d),
    400: const Color(0xffd18521),
    500: const Color(0xff5c5252),
    600: const Color(0xffe012be),
    700: const Color(0xFFff0396),
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(
        useLoader: false,
        seconds: 2,
        navigateAfterSeconds: LoginScreen(),
        image: new Image.asset('assets/splash screen/v.png'),
        photoSize: 100.0,
        backgroundColor: vcolor,
      ),

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        primarySwatch: vcolor,
      ),
      // theme: ThemeData(
      // primaryColor: Colors.purple,
      // ),
    );
  }
}

class LoginScreen extends StatelessWidget {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  late String _username, _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: socialIcon,
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 200,
                    child: ClipPath(
                      clipper: WaveClipperTwo(
                        flip: true,
                      ),
                      child: Container(
                        height: 130,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.center,
                                end: Alignment.centerRight,
                                colors: [
                              gradientColor1,
                              gradientColor2,
                            ])),
                        // child: Column(
                        //   children: [
                        //     Padding(
                        //       padding: const EdgeInsets.all(8.0),
                        //       child: Icon(Icons.login),
                        //     ),
                        //   ],
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 400,
                    width: 330,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      color: cardColor,
                      elevation: 17,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 18.0),
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: textColor1,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 280,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                onSaved: (value) {
                                  _username = value!;
                                },
                                validator: (username) {
                                  if (username!.isEmpty)
                                    return "Please Enter User Name";
                                  else
                                    // print(username);
                                    return null;
                                },
                                decoration: new InputDecoration(
                                  prefixIcon: Icon(
                                    Icons.person_outline_sharp,
                                    color: textColor2,
                                  ),
                                  fillColor: textfieldColor,
                                  // hoverColor: Colors.yellow,
                                  filled: true,
                                  hintText: "User name",
                                  hintStyle: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Nunito',
                                    // fontWeight: FontWeight.w600,
                                    color: textColor2,
                                  ),
                                  border: new OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: textColor2,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 280,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: TextFormField(
                                keyboardType: TextInputType.name,
                                obscuringCharacter: "*",
                                obscureText: true,
                                onSaved: (value) {
                                  _password = value!;
                                },
                                validator: (password) {
                                  if (password!.isEmpty)
                                    return "Enter Password";
                                  else if (password.length < 5 ||
                                      password.length > 10)
                                    return "Password Length is Incorrect";
                                  return null;
                                },
                                decoration: new InputDecoration(
                                  filled: true,
                                  fillColor: textfieldColor,
                                  prefixIcon: Icon(
                                    Icons.lock_outline_rounded,
                                    color: textColor2,
                                  ),
                                  hintText: "Password",
                                  hintStyle: TextStyle(
                                    color: textColor2,
                                    fontSize: 17,
                                    fontFamily: 'Nunito',
                                    // fontWeight: FontWeight.w600,
                                  ),
                                  border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 145.0,
                              top: 2.0,
                            ),
                            child: FlatButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ForgotPassword()),
                                  );
                                },
                                child: Text(
                                  "Forgot Password ?",
                                  style: TextStyle(
                                    fontFamily: 'Nunito',
                                    color: textColor3,
                                  ),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 0.0),
                            child: SizedBox(
                              height: 55,
                              width: 130,
                              child: RaisedButton(
                                color: gradientColor2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    37,
                                  ),
                                ),
                                onPressed: () {
                                  if (formkey.currentState!.validate()) {
                                    formkey.currentState!.save();
                                    if (_username == "vicky" &&
                                        _password == "12345") {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => LoginPage()),
                                      );
                                    } else {
                                      print("Illegal Entry!!");
                                    }

                                    // print(_username);
                                    // print(_password);
                                  }
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.person_outline_sharp,
                                      color: textColor2,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 12.0),
                                      child: Text(
                                        "Login",
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          color: textColor2,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 2.0,
                              left: 50,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Don't have an account?",
                                  style: TextStyle(
                                    color: textColor3,
                                    fontFamily: 'Nunito',
                                  ),
                                ),
                                FlatButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => SignupPage()),
                                      );
                                    },
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        fontFamily: 'Nunito',
                                        color: mainContainer,
                                        // letterSpacing: 1,
                                      ),
                                    )),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void login_conform() async {
    var res = await Network().postMethodWithOutToken(false, '/logout');
    var body = json.decode(res.body);
    print(body);
  }
}

// Container(
// height: 50.0,
// child: RaisedButton(
// onPressed: () {},
// shape: RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(40),
// ),
// child: Ink(
// decoration: BoxDecoration(
// gradient: LinearGradient(colors: [
// gradientColor1,
// gradientColor2,
// ])),
// ),
// ),
// ),
