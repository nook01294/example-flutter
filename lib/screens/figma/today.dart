import 'package:argon_flutter/screens/figma/map_location/map.dart';
import 'package:argon_flutter/screens/figma/store/number_mine.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Today extends StatelessWidget {
  Today({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Today(title: title),
    );
  }
}

class _Today extends StatefulWidget {
  _Today({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _TodayState();
  }
}

class _TodayState extends State<_Today> with AutomaticKeepAliveClientMixin {
  // ใส่เพื่อเมื่อสลับหน้า(Tab) ให้ใช้ข้อมูลเดิมที่เคยโหลดแล้ว ไม่ต้องโหลดใหม่
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      SafeArea(
        child: ListView(children: [
          Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MapScreen(),
                      )).then((value) {});
                },
                child: Column(
                  children: [
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
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Store Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    'NY, Abraham Suite..',
                                    style: TextStyle(),
                                  ),
                                ],
                              ),
                            )),
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.add_shopping_cart_outlined,
                                size: 25,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.map_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Distance',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '15 กม. 8.50 นาที',
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.arrow_upward_outlined,
                                // color: Colors.green,
                                size: 25,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.people_outline,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Agness Moody',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    '09-5449-8700',
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.phone_callback_outlined,
                                // color: Colors.green,
                                size: 25,
                              ),
                            )
                          ],
                        )),
                    Padding(
                        padding: EdgeInsets.only(top: 5.0),
                        child: Row(
                          children: [
                            Container(
                              width: 100.0,
                              child: Icon(
                                Icons.add_box_outlined,
                                color: Colors.grey,
                                size: 30,
                              ),
                            ),
                            Expanded(
                                child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('32 รายการ, 32 ตะกร้า',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                  Text(
                                    'No. 630626-00xx',
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
                                            color: Colors.orange,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                      'THB',
                                      style: TextStyle(),
                                    )
                                  ],
                                ))
                          ],
                        )),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Divider(
                thickness: 2,
                color: Colors.green,
                height: 5,
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/pic2.jpg"),
                          radius: 25.0,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Store Name',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'NY, Abraham Suite..',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Distance',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '15 กม. 8.50 นาที',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.arrow_upward_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.people_outline,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agness Moody',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '09-5449-8700',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.phone_callback_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('32 รายการ, 32 ตะกร้า',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'No. 630626-00xx',
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
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'THB',
                                style: TextStyle(),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 20.0),
              Divider(
                thickness: 2,
                color: Colors.green,
                height: 5,
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/pic3.jpg"),
                          radius: 25.0,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Store Name',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'NY, Abraham Suite..',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Distance',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '15 กม. 8.50 นาที',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.arrow_upward_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.people_outline,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agness Moody',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '09-5449-8700',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.phone_callback_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('32 รายการ, 32 ตะกร้า',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'No. 630626-00xx',
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
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'THB',
                                style: TextStyle(),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 20.0),
              Divider(
                thickness: 2,
                color: Colors.green,
                height: 5,
                indent: 30,
                endIndent: 30,
              ),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/img/pic4.jpg"),
                          radius: 25.0,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Store Name',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'NY, Abraham Suite..',
                              style: TextStyle(),
                            ),
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_shopping_cart_outlined,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.map_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Distance',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '15 กม. 8.50 นาที',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.arrow_upward_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.people_outline,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Agness Moody',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              '09-5449-8700',
                              style: TextStyle(),
                            )
                          ],
                        ),
                      )),
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.phone_callback_outlined,
                          // color: Colors.green,
                          size: 25,
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      Container(
                        width: 100.0,
                        child: Icon(
                          Icons.add_box_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ),
                      Expanded(
                          child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('32 รายการ, 32 ตะกร้า',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(
                              'No. 630626-00xx',
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
                                      color: Colors.orange,
                                      fontWeight: FontWeight.bold)),
                              Text(
                                'THB',
                                style: TextStyle(),
                              )
                            ],
                          ))
                    ],
                  )),
              SizedBox(height: 20.0),
              Divider(
                thickness: 2,
                color: Colors.green,
                height: 5,
                indent: 30,
                endIndent: 30,
              ),
              SizedBox(height: 20.0),
            ],
          )
        ]),
      )
    ]));
  }
}
