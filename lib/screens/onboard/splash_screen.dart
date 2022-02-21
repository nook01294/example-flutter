import 'dart:async';

import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/main.dart';
import 'package:argon_flutter/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => StartState();
}

class StartState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen(context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => CkeckLoginScreen()));
  }

  initScreen(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/onboarding-free.png"),
                    fit: BoxFit.cover))),
        SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: MediaQuery.of(context).size.height * 0.15,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                        child: Center(
                            child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FittedBox(
                                fit: BoxFit.contain,
                                child: Text("Now UI",
                                    style: TextStyle(
                                        color: NowUIColors.white,
                                        fontWeight: FontWeight.w600)))),
                        Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text("Flutter",
                                  style: TextStyle(
                                      color: NowUIColors.white,
                                      fontWeight: FontWeight.w600)),
                            ))
                      ],
                    ))),
                  ],
                ),
                SizedBox(height: 30),
                // Padding(
                //   padding: const EdgeInsets.only(top: 50.0),
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: FlatButton(
                //       textColor: NowUIColors.white,
                //       color: NowUIColors.info,
                //       onPressed: () {
                //         Navigator.pushReplacementNamed(context, '/login');
                //       },
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(4.0),
                //       ),
                //       child: Padding(
                //           padding: EdgeInsets.only(
                //               left: 16.0, right: 16.0, top: 16, bottom: 16),
                //           child: Text("GET STARTED",
                //               style: TextStyle(fontSize: 12.0))),
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
