import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/widgets/drawer.dart';
import 'package:argon_flutter/widgets/navbar.dart';
import 'package:flutter/material.dart';

class RowCol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var percenW = size.width / 100;
    var isTablet = size.width > 600;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: Navbar(
        title: "RowCol",
        rightOptions: false,
      ),
      backgroundColor: ArgonColors.bgColorScreen,
      drawer: ArgonDrawer(currentPage: "RowCol"),
      body: Container(
          child: ListView(
        children: [
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'สินค้าแนะนำ',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'ดูทั้งหมด',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 180,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic1.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic2.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic3.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic4.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'สินค้าใหม่',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'ดูทั้งหมด',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 180,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic1.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic2.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic3.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic4.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                  ],
                ),
              )),
          Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'สินค้าโปรโมชั่น',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'ดูทั้งหมด',
                        style: TextStyle(
                            color: Colors.orange,
                            fontWeight: FontWeight.bold,
                            fontSize: isTablet ? percenW * 2.5 : 16),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
              padding: EdgeInsets.only(left: 20.0),
              child: SizedBox(
                height: 180,
                child: ListView(
                  // This next line does the trick.
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic1.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic2.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic3.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                    Container(
                      width: 160.0,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/img/pic4.jpg',
                            width: isTablet ? 100 : 120,
                            height: isTablet ? 100 : 120,
                            fit: BoxFit.cover,
                          ),
                          Text('Lorem Ipsum is simply dummy text of the...')
                        ],
                      ),
                    ),
                  ],
                ),
              )),
        ],
      )),
    );
  }
}
