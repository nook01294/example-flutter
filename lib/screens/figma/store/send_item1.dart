import 'package:argon_flutter/screens/figma/map_location/map.dart';
import 'package:argon_flutter/screens/figma/store/list_item.dart';
import 'package:argon_flutter/screens/figma/store/number_mine.dart';
import 'package:argon_flutter/utils/auth_service.dart';
import 'package:argon_flutter/widgets/card_mini.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SendItem1 extends StatefulWidget {
  SendItem1({Key key}) : super(key: key);

  @override
  State<SendItem1> createState() => _SendItem1State();
}

class _SendItem1State extends State<SendItem1> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var isTablet = size.width > 600;
    final heightPercent = Get.height / 100;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ส่งสินค้า',
          style: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 57, 203, 91),
        centerTitle: true,
      ),
      body: Stack(children: <Widget>[
        SafeArea(
          child: ListView(children: [
            Column(
              children: [
                GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => MapScreen(),
                      //     )).then((value) {});
                    },
                    child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: BorderSide(
                            color: Colors.grey.withOpacity(0.5),
                            width: 1,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 20.0),
                          child: Column(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 10.0, bottom: 15.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('     27/09/63',
                                              style: TextStyle(
                                                  fontSize: 16.0,
                                                  fontWeight: FontWeight.bold))
                                        ],
                                      )),
                                      Expanded(
                                          child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text('No. 630626-00XX     ',
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      )),
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 100.0,
                                        child: CircleAvatar(
                                          backgroundImage:
                                              AssetImage("assets/img/pic1.jpg"),
                                          radius: 25.0,
                                        ),
                                      ),
                                      Expanded(
                                          child: Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('Store Name',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                              'NY, Abraham Suite..',
                                              style: TextStyle(),
                                            ),
                                            Text('(แสดงสถานะปัจจุบัน)',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      )),
                                      Container(
                                        width: 100.0,
                                      )
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 100.0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('รวมส่ง',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )),
                                      Expanded(
                                          child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('32 รายการ, 32 ตะกร้า',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                            Text(
                                              'No. 630626-XXXX',
                                              style: TextStyle(),
                                            )
                                          ],
                                        ),
                                      )),
                                      Container(
                                          width: 100.0,
                                          child: Column(
                                            children: [
                                              Text('3200.00',
                                                  style: TextStyle(
                                                      color: Colors.green,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                'บาท',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                              Padding(
                                  padding: EdgeInsets.only(top: 5.0),
                                  child: Row(
                                    children: [
                                      Container(
                                          width: 100.0,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text('รวมรับคืน',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )),
                                      Expanded(
                                          child: Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text('1 รายการ, 2 ตะกร้า',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold)),
                                          ],
                                        ),
                                      )),
                                      Container(
                                          width: 100.0,
                                          child: Column(
                                            children: [
                                              Text('-3200.00',
                                                  style: TextStyle(
                                                      color: Colors.orange,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                              Text(
                                                'บาท',
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )
                                            ],
                                          ))
                                    ],
                                  )),
                            ],
                          ),
                        ))),
                SizedBox(height: 20.0),
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ListItem(),
                                )).then((value) {});

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
                                Icons.send,
                                color: Colors.green,
                                size: size.width * .10,
                              ),
                              size: isTablet
                                  ? size.width * .20
                                  : size.width * .25,
                              width: size.width,
                              text: 'ส่งสินค้า'),
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
                                Icons.replay_outlined,
                                color: Colors.green,
                                size: size.width * .10,
                              ),
                              size: isTablet
                                  ? size.width * .20
                                  : size.width * .25,
                              width: size.width,
                              text: 'รับคืนสินค้า'),
                        )),
                    Padding(
                      padding: EdgeInsets.only(
                          left: isTablet ? 50 : 20, bottom: isTablet ? 20 : 20),
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
                              Icons.credit_card,
                              color: Colors.green,
                              size: size.width * .10,
                            ),
                            size:
                                isTablet ? size.width * .20 : size.width * .25,
                            width: size.width,
                            text: 'ยืนยัน/ชำระเงิน'),
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
                                Icons.document_scanner_outlined,
                                color: Colors.green,
                                size: size.width * .10,
                              ),
                              size: isTablet
                                  ? size.width * .20
                                  : size.width * .25,
                              width: size.width,
                              text: 'เอกสาร'),
                        )),
                  ],
                ),
              ],
            )
          ]),
        )
      ]),
    );
  }
}
