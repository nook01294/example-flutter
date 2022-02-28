import 'package:argon_flutter/constants/reload.dart';
import 'package:argon_flutter/screens/figma/home_figma.dart';
import 'package:argon_flutter/screens/figma/store/check_in.dart';
import 'package:argon_flutter/screens/login.dart';
import 'package:argon_flutter/screens/onboard/onboarding1.dart';
import 'package:argon_flutter/screens/onboard/splash_screen.dart';
import 'package:argon_flutter/screens/row-col.dart';
import 'package:argon_flutter/utils/auth_stm.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// screens
import 'package:argon_flutter/screens/onboard/onboarding.dart';
import 'package:argon_flutter/screens/pro.dart';
import 'package:argon_flutter/screens/home.dart';
import 'package:argon_flutter/screens/profile.dart';
import 'package:argon_flutter/screens/register.dart';
import 'package:argon_flutter/screens/articles.dart';
import 'package:argon_flutter/screens/elements.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Argon PRO Flutter',
        theme: ThemeData(fontFamily: 'Prompt'),
        initialRoute: "/onboarding",
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          "/onboarding": (BuildContext context) => new SplashScreen(),
          "/ckeckLogin": (BuildContext context) => new CkeckLoginScreen(),
          "/home": (BuildContext context) => new Home(),
          "/profile": (BuildContext context) => new Profile(),
          "/articles": (BuildContext context) => new Articles(),
          "/elements": (BuildContext context) => new Elements(),
          "/homeFigma": (BuildContext context) => new HomeFigma(),
          "/login": (BuildContext context) => new Login(),
          "/pro": (BuildContext context) => new Pro(),
          "/checkIn": (BuildContext context) => new CheckIn(),
        });
  }
}

class CkeckLoginScreen extends StatelessWidget {
  CkeckLoginScreen({Key key}) : super(key: key);
  final authCon = Get.put(StmAuth());
  // final employee = Get.put(EmployeeStm());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (authCon.isLogin.value == 'isLogIn') {
        return Home();
      } else if (authCon.isLogin.value == 'isNotLogIn') {
        return Login();
      }
      return Scaffold(body: spinkit);
    });
  }
}
