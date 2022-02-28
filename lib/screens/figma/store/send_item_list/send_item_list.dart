import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

class SendItemList extends StatelessWidget {
  SendItemList({this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _MyPage(title: title),
    );
  }
}

class _MyPage extends StatefulWidget {
  _MyPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  State<StatefulWidget> createState() {
    return _MyPageState();
  }
}

class _MyPageState extends State<_MyPage> with AutomaticKeepAliveClientMixin {
  // ใส่เพื่อเมื่อสลับหน้า(Tab) ให้ใช้ข้อมูลเดิมที่เคยโหลดแล้ว ไม่ต้องโหลดใหม่
  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _value;
    return Scaffold(
        body: Stack(children: <Widget>[
      SafeArea(
          child: ListView(children: [
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store1.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store2.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store3.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store4.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store5.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
        Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Container(
                    width: 100.0,
                    height: 100.0,
                    child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child:
                            Image(image: AssetImage("assets/img/store6.jpg")))),
                Expanded(
                    child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Name',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0)),
                      Text(
                        '1 Basket',
                        style: TextStyle(),
                      ),
                      Text(
                        'No. 630626-XXXX-XX',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: 100.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                          leading: Radio(
                              value: 1,
                              groupValue: _value,
                              onChanged: (int value) {
                                setState(() {
                                  _value = value;
                                });
                              })),
                      Text('100.00 ฿',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                )
              ],
            )),
        DottedLine(
          lineLength: 350.0,
        ),
      ])),
      Positioned(
          left: 0.0,
          right: 0.0,
          bottom: 0.0,
          child: Container(
            height: 180.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 16.0,
                      spreadRadius: 0.5,
                      offset: Offset(0.7, 0.7))
                ]),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 6.0,
                  ),
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
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
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
                                  Text('5200.00',
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
                  SizedBox(
                    height: 10.0,
                  ),
                  Divider(
                    thickness: 1.5,
                    indent: 10.0,
                    endIndent: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.check_circle_outline,
                        size: size.width * .10,
                        color: Colors.green,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.popAndPushNamed(context, '/checkIn');
                        },
                        child: new Text(' บันทึกส่งสินค้า',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.green)),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.green,
                    height: 5,
                    indent: 90,
                    endIndent: 90,
                  ),
                ],
              ),
            ),
          ))
    ]));
  }
}
