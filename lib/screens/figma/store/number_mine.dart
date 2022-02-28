import 'package:argon_flutter/screens/figma/store/send_item1.dart';
import 'package:argon_flutter/widgets/card_mini.dart';
import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
import 'package:get/get.dart';

class NumberMine extends StatefulWidget {
  NumberMine({Key key}) : super(key: key);

  @override
  State<NumberMine> createState() => _NumberMineState();
}

class _NumberMineState extends State<NumberMine> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isTablet = size.width > 600;
    final heightPercent = Get.height / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ใส่เลขไมล์',
          style: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 57, 203, 91),
        centerTitle: true,
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: ListView(children: [
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: heightPercent * 5,
                    ),
                    Text(
                      'ใส่เลขไมล์',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.grey),
                    ),
                    Container(width: size.width * 0.8, child: TextField()),
                    SizedBox(
                      height: heightPercent * 5,
                    ),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      alignment: WrapAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 0,
                                bottom: isTablet ? 10 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('1',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 10 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('2',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('3',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 0,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('4',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('5',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('6',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 0,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('7',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('8',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('9',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 0,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('C',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text('0',
                                          style: TextStyle(fontSize: 30.0))
                                    ],
                                  ),
                                ),
                              ),
                            )),
                        Padding(
                            padding: EdgeInsets.only(
                                left: isTablet ? 50 : 10,
                                bottom: isTablet ? 20 : 10),
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
                              child: Container(
                                width: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                height: isTablet
                                    ? size.width * .20
                                    : size.width * .25,
                                child: Card(
                                  color: Colors.white,
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    side: BorderSide(
                                      color: Colors.grey.withOpacity(0.5),
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_back,
                                        color: Colors.black,
                                        size: 30,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: heightPercent * 9,
            ),
            Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 0.0,
                child: Container(
                    height: heightPercent * 12,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 1.0,
                          spreadRadius: 0.1,
                          offset: Offset(0.7, 0.7))
                    ]),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Expanded(
                                  child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.cancel_outlined,
                                          size: size.width * .07,
                                          ),
                                      GestureDetector(
                                        onTap: () {
                                          // Navigator.push(
                                          //     context,
                                          //     MaterialPageRoute(
                                          //       builder: (context) => HomeFigma(),
                                          //     )).then((value) {});
                                        },
                                        child: new Text(' ยกเลิก',
                                            style: TextStyle(fontSize: 20)),
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                              Expanded(
                                  child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.check_circle_outline,
                                    color: Colors.green,
                                    size: size.width * .07,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SendItem1(),
                                          )).then((value) {});
                                    },
                                    child: new Text(' ตกลง',
                                        style: TextStyle(
                                            fontSize: 20, color: Colors.green)),
                                  ),
                                ],
                              )),
                            ],
                          ),
                        ])))
          ]))
        ],
        // footer: Footer(
        //     child: Column(
        //         crossAxisAlignment: CrossAxisAlignment.center,
        //         mainAxisAlignment: MainAxisAlignment.spaceAround,
        //         children: <Widget>[
        //       Row(
        //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //         children: <Widget>[
        //           Expanded(
        //               child: Column(
        //             children: [
        //               Row(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Icon(Icons.cancel_outlined
        //                       // size: size.width * .10,
        //                       ),
        //                   GestureDetector(
        //                     onTap: () {
        //                       // Navigator.push(
        //                       //     context,
        //                       //     MaterialPageRoute(
        //                       //       builder: (context) => HomeFigma(),
        //                       //     )).then((value) {});
        //                     },
        //                     child: new Text('  ยกเลิก',
        //                         style: TextStyle(fontSize: 16)),
        //                   ),
        //                 ],
        //               ),
        //             ],
        //           )),
        //           Expanded(
        //               child: Row(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Icon(
        //                 Icons.check_circle_outline,
        //                 color: Colors.green,
        //                 // size: size.width * .10,
        //               ),
        //               GestureDetector(
        //                 onTap: () {
        //                   Navigator.push(
        //                       context,
        //                       MaterialPageRoute(
        //                         builder: (context) => SendItem1(),
        //                       )).then((value) {});
        //                 },
        //                 child: new Text('  ตกลง',
        //                     style:
        //                         TextStyle(fontSize: 16, color: Colors.green)),
        //               ),
        //             ],
        //           )),
        //         ],
        //       ),
        //     ])),
      ),
    );
  }
}
