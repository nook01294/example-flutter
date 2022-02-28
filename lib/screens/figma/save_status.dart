import 'dart:ui';

import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/figma/home_figma.dart';
import 'package:argon_flutter/screens/figma/send_item.dart';
import 'package:argon_flutter/widgets/card_mini.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
import 'package:footer/footer_view.dart';

class SaveStatus extends StatelessWidget {
  const SaveStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final heightPercent = Get.height / 100;
    var isTablet = size.width > 600;
    return Scaffold(
      // backgroundColor: ArgonColors.bgColorScreen,
      body: FooterView(
        children: <Widget>[
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: heightPercent * 25,
                ),
                Icon(
                  Icons.check_circle_outline,
                  color: Colors.green,
                  size: size.width * .40,
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                Text(
                  'บันทึกข้อมูลการทำงาน',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text('เรียบร้อยแล้ว',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))
              ],
            ),
          )
        ],
        footer: Footer(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                        child: Row(
                      children: [
                        Icon(Icons.arrow_back
                            // size: size.width * .10,
                            ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeFigma(),
                                )).then((value) {});
                          },
                          child: new Text(' กลับหน้าหลัก',
                              style: TextStyle(fontSize: 16)),
                        ),
                        // Text(
                        //   'กลับหน้าหลัก',
                        //   style: TextStyle(fontSize: 16),
                        // )
                      ],
                    )),
                    Container(
                        child: Row(
                      children: [
                        Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                          // size: size.width * .10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SendItem(),
                                )).then((value) {});
                          },
                          child: new Text(' เริ่มงาน',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.green)),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
            ])),
      ),
    );
  }
}
