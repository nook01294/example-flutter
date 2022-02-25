import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/figma/home_figma.dart';
import 'package:argon_flutter/screens/figma/save_status.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';

class SaveWork extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<SaveWork> {
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
                      Text('บันทึกข้อมูลการทำงาน',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white)),
                      Text('26/09/63',
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
                        height: heightPercent * 5,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              // margin: EdgeInsets.only(left: 20),
                              child: Text(
                                "ทะเบียนรถ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              child: Text(
                                "เลขไมล์",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 70,
                              child: ListView(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(right: 5.0),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        color: Colors.grey[850],
                                        border: Border.all(color: Colors.grey)),
                                    padding: EdgeInsets.only(
                                        left: 20.0, right: 20.0),
                                    child: DropdownButton(
                                      hint: Text("Select Type"),
                                      isExpanded: true,
                                      value: dropdownValue,
                                      icon: Icon(Icons.keyboard_arrow_down),
                                      iconSize: 24,
                                      elevation: 16,
                                      underline: Container(
                                        height: 1.0,
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 0.0))),
                                      ),
                                      onChanged: (String newValue) {
                                        setState(() {
                                          dropdownValue = newValue;
                                        });
                                      },
                                      items: <String>[
                                        'กฮ 2552 สงขลา',
                                        'ดอ 2553 น่าน',
                                        'ปผ 2554 แพร่',
                                        'กด 2555 พะเยา'
                                      ].map<DropdownMenuItem<String>>(
                                          (String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value,
                                              style: const TextStyle(
                                                  color: Colors.white)),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              height: 70,
                              child: ListView(
                                children: [
                                  Container(
                                    child: TextFormField(
                                      initialValue: "258,385",
                                      style: TextStyle(color: Colors.white),
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[850],
                                        filled: true,
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        // hintText: '258,385',
                                        contentPadding: EdgeInsets.all(13.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: heightPercent * 2,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'บันทึกภาพถ่าย',
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
                        ],
                      ),
                      SizedBox(
                        height: heightPercent * 5,
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
                                    builder: (context) => SaveStatus(),
                                  )).then((value) {});
                            },
                            child: new Text('บันทึก',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green)),
                          ),
                        ],
                      )),
                      // Padding(padding: EdgeInsets.only(top: 20.0)),
                      Divider(
                        thickness: 3,
                        color: Colors.green,
                        height: 5,
                        indent: 130,
                        endIndent: 130,
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
