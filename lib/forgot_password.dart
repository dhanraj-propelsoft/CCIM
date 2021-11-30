import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_login_screen/style.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainContainer,
        title: Text("Forgot Password?"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 160,
                left: 16,
              ),
              child: SizedBox(
                height: 350,
                width: 330,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  color: cardColor,
                  elevation: 10,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 18.0),
                        child: Text(
                          "Forgot Password",
                          style: TextStyle(
                            color: textColor1,
                            fontSize: 22,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 28.0),
                        child: SizedBox(
                          width: 300,
                          child: TextField(
                            decoration: InputDecoration(
                                hintText: "E-mail ID",
                                hintStyle: TextStyle(
                                  color: textColor2,
                                  fontFamily: 'Nunito',
                                ),
                                prefixIcon: Icon(
                                  Icons.mail_outline,
                                  color: textColor2,
                                ),
                                fillColor: textfieldColor,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: textColor2,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                )),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: mainContainer,
                                fontSize: 13,
                                fontFamily: 'Nunito',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 300,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 12.0),
                          child: TextField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: textfieldColor,
                              prefixIcon: Icon(
                                Icons.phone_android_sharp,
                                color: textColor2,
                              ),
                              hintText: "Mobile Number",
                              hintStyle: TextStyle(
                                color: textColor2,
                                fontFamily: 'Nunito',
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.yellow),
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 18,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      buttongradient1,
                                      buttongradient2,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chevron_left,
                                      color: textColor2,
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        "Back",
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 18,
                                          color: textColor2,
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
                              top: 18,
                            ),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                height: 50,
                                width: 100,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      buttongradient1,
                                      buttongradient2,
                                    ],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 23.0),
                                      child: Text(
                                        "Next",
                                        style: TextStyle(
                                          fontFamily: 'Nunito',
                                          fontSize: 18,
                                          color: textColor2,
                                        ),
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: textColor2,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Padding(
// padding: const EdgeInsets.all(18.0),
// child: FlatButton(
// onPressed: () {},
// child: Row(
// children: [
// Icon(
// Icons.chevron_left,
// color: textColor2,
// ),
// Text(
// "Back",
// style: TextStyle(
// color: textColor2,
// ),
// ),
// ],
// ),
// color: buttonColor,
// ),
// ),
// FlatButton(
// onPressed: () {},
// child: Row(
// children: [
// Text(
// "Next",
// style: TextStyle(color: textColor2),
// ),
// Icon(
// Icons.chevron_right,
// color: textColor2,
// ),
// ],
// ),
// color: mainContainer,
// ),
// ],
// ),
