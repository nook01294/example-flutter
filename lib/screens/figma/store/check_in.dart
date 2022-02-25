import 'package:argon_flutter/screens/figma/save_status.dart';
import 'package:argon_flutter/screens/figma/store/number_mine.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:dotted_border/dotted_border.dart';

class CheckIn extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<CheckIn> {
  String _currentAddress = "";
  final heightPercent = Get.height / 100;
  String dropdownValue = 'ปผ 2554 แพร่';

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position);

    List<Placemark> p =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    Placemark place = p[0];
    print(place);

    setState(() {
      _currentAddress = "${place.street}";
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[800],
        body: Stack(children: <Widget>[
          SafeArea(
            child: ListView(children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, right: 16.0, top: 50.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('เช็คอินร้านค้า',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white)),
                      Text('26/09/63  10:30',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.green)),
                      SizedBox(
                        height: heightPercent * 5,
                      ),
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      _currentAddress,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heightPercent * 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'บันทึกภาพถ่ายเลขไมล์',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.grey),
                          ),
                          DottedBorder(
                            color: Colors.black,
                            borderType: BorderType.RRect,
                            radius: Radius.circular(20),
                            dashPattern: [10, 5, 10, 5, 10, 5],
                            padding: EdgeInsets.all(6),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12)),
                              child: Container(
                                height: 300,
                                width: 500,
                                color: Colors.grey[850],
                              ),
                            ),

                            // child: FlutterLogo(
                            //   size: 300,
                            // ),
                            // borderType: BorderType.RRect,
                            // radius: Radius.circular(20),
                            // dashPattern: [10, 5, 10, 5, 10, 5],
                          ),
                          Text(
                            '*กรุณาถ่ายภาพ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: heightPercent * 10,
                      ),
                      Container(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.car_repair_outlined,
                            size: size.width * .10,
                            color: Colors.green,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NumberMine(),
                                  )).then((value) {});
                            },
                            child: new Text('บันทึกภาพเลขไมล์',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                          ),
                        ],
                      )),
                      Divider(
                        thickness: 3,
                        color: Colors.green,
                        height: 5,
                        indent: 80,
                        endIndent: 80,
                      ),
                      SizedBox(
                        height: heightPercent * 5,
                      ),
                    ]),
              ),
            ]),
          )
        ]));
  }
}
