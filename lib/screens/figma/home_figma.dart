import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/figma/location.dart';
import 'package:argon_flutter/screens/figma/save_status.dart';
import 'package:argon_flutter/screens/figma/save_work.dart';
import 'package:argon_flutter/widgets/card_mini.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:footer/footer.dart';
import 'package:get/get.dart';
import 'package:footer/footer_view.dart';

class HomeFigma extends StatelessWidget {
  const HomeFigma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final heightPercent = Get.height / 100;
    var isTablet = size.width > 600;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Navbar(
        title: 'HomeFigma',
        transparent: false,
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "HomeFigma"),
      body: FooterView(
        children: <Widget>[
          SafeArea(
              child: Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            child: CircleAvatar(
                              backgroundImage: AssetImage(
                                  "assets/img/profile-screen-avatar.jpg"),
                              radius: 65.0,

                              // maxRadius: 200.0,
                            ),
                            alignment: FractionalOffset(0.5, 0.0),
                          ),
                          Padding(padding: EdgeInsets.only(top: 15.0)),
                          Text(
                            'บริษัท ศ.ธรรมกุล จำกัด',
                            style: TextStyle(
                                color: Colors.green[800],
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'นายปิยะวัฒน์  มีเสน',
                            style: TextStyle(
                                fontSize: 14, color: Colors.green[800]),
                          ),
                          Padding(padding: EdgeInsets.only(top: 10.0)),
                          Text('หมายเลขรถ  016',
                              style: TextStyle(
                                color: Colors.green[800],
                                fontSize: 18,
                              )),
                          Text(
                            'ทะเบียนรถ  ผน  8599  สงขลา',
                            style: TextStyle(
                                fontSize: 14, color: Colors.green[800]),
                          ),

                          // menu

                          SizedBox(
                            height: 30,
                          ),

                          Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            alignment: WrapAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: isTablet ? 50 : 0,
                                      bottom: isTablet ? 20 : 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => CountNumberPage(),
                                      //     )).then((value) {});

                                      // pushNewScreen(
                                      //   context,
                                      //   screen: CountNumberPage(),
                                      //   withNavBar: false,
                                      //   pageTransitionAnimation:
                                      //       PageTransitionAnimation.cupertino,
                                      // );
                                    },
                                    child: CardMini(
                                        background: Colors.white,
                                        icon: Icon(
                                          Icons.bus_alert_outlined,
                                          color: Colors.green,
                                          size: size.width * .10,
                                        ),
                                        size: isTablet
                                            ? size.width * .20
                                            : size.width * .25,
                                        width: size.width,
                                        text: 'ทำรายการ'),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                      left: isTablet ? 50 : 20,
                                      bottom: isTablet ? 20 : 20),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => ProductSearch(),
                                      //     )).then((value) {});

                                      // pushNewScreen(
                                      //   context,
                                      //   screen: ProductSearch(),
                                      //   withNavBar: false,
                                      //   pageTransitionAnimation:
                                      //       PageTransitionAnimation.cupertino,
                                      // );
                                    },
                                    child: CardMini(
                                        background: Colors.white,
                                        icon: Icon(
                                          Icons.work_outline,
                                          color: Colors.green,
                                          size: size.width * .10,
                                        ),
                                        size: isTablet
                                            ? size.width * .20
                                            : size.width * .25,
                                        width: size.width,
                                        text: 'สรุปงาน'),
                                  )),
                              Padding(
                                padding: EdgeInsets.only(
                                    left: isTablet ? 50 : 20,
                                    bottom: isTablet ? 20 : 20),
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(
                                    //       builder: (context) => WasteReport(),
                                    //     )).then((value) {});

                                    // pushNewScreen(
                                    //   context,
                                    //   screen: WasteReport(),
                                    //   withNavBar: false,
                                    //   pageTransitionAnimation:
                                    //       PageTransitionAnimation.cupertino,
                                    // );
                                  },
                                  child: CardMini(
                                      background: Colors.white,
                                      icon: Icon(
                                        Icons.store_mall_directory_outlined,
                                        color: Colors.green,
                                        size: size.width * .10,
                                      ),
                                      size: isTablet
                                          ? size.width * .20
                                          : size.width * .25,
                                      width: size.width,
                                      text: 'ลูกค้า'),
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(
                                    left: isTablet ? 50 : 0,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => ListProduct(),
                                      //     )).then((value) {});

                                      // pushNewScreen(
                                      //   context,
                                      //   screen: ListProduct(),
                                      //   withNavBar: false,
                                      //   pageTransitionAnimation:
                                      //       PageTransitionAnimation.cupertino,
                                      // );
                                    },
                                    child: CardMini(
                                        background: Colors.white,
                                        icon: Icon(
                                          Icons.local_gas_station_outlined,
                                          color: Colors.green,
                                          size: size.width * .10,
                                        ),
                                        size: isTablet
                                            ? size.width * .20
                                            : size.width * .25,
                                        width: size.width,
                                        text: 'น้ำมัน'),
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(
                                    left: isTablet ? 50 : 20,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      // Navigator.push(
                                      //     context,
                                      //     MaterialPageRoute(
                                      //       builder: (context) => ListProduct(),
                                      //     )).then((value) {});

                                      // pushNewScreen(
                                      //   context,
                                      //   screen: ProfilePage(),
                                      //   withNavBar: false,
                                      //   pageTransitionAnimation:
                                      //       PageTransitionAnimation.cupertino,
                                      // );
                                    },
                                    child: CardMini(
                                        background: Colors.white,
                                        icon: Icon(
                                          Icons.monetization_on_outlined,
                                          color: Colors.green,
                                          size: size.width * .10,
                                        ),
                                        size: isTablet
                                            ? size.width * .20
                                            : size.width * .25,
                                        width: size.width,
                                        text: 'ส่งเงิน'),
                                  )),
                            ],
                          ),
                        ]),
                  )))
        ],
        footer: Footer(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        child: Center(
                      child: Card(
                          color: Color.fromARGB(255, 57, 203, 91),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(65.0),
                            side: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: IconButton(
                            padding: EdgeInsets.all(20.0),
                            icon: Icon(
                              Icons.bus_alert_outlined,
                              color: Colors.white,
                              size: size.width * .10,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SaveWork(),
                                  )).then((value) {});
                            },
                          )),
                    )),
                  ],
                ),
              ),
              Text(
                'START WORK',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            ])),
        // flex: 1,
      ),
    );
  }
}
