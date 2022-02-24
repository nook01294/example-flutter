import 'package:argon_flutter/screens/figma/page.dart';
import 'package:argon_flutter/screens/figma/today.dart';
import 'package:flutter/material.dart';

class SendItem extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SendItem>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'ส่งสินค้า( 10 / 50 )',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: 'Prompt'),
          ),
          backgroundColor: Color.fromARGB(255, 57, 203, 91),
          centerTitle: true,
        ),
        body: DefaultTabController(
          length: 3,
          child: Column(
            children: <Widget>[
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    labelColor: Color.fromARGB(255, 57, 203, 91),
                    unselectedLabelColor: Color.fromARGB(255, 194, 202, 213),
                    indicatorColor: Color.fromARGB(255, 57, 203, 91),
                    labelStyle: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Prompt'),
                    tabs: [
                      Tab(
                        text: '25/09/63',
                      ),
                      Tab(
                        text: 'Today',
                      ),
                      Tab(
                        text: '27/09/63',
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: <Widget>[
                    MyPage(title: 'หน้า 1'),
                    Today(title: 'หน้า 2'),
                    MyPage(title: 'หน้า 3')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
