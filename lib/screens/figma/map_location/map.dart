import 'dart:async';
import 'package:argon_flutter/screens/figma/store/check_in.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  MapScreen({Key key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapState();
}

class _MapState extends State<MapScreen> {
  Completer<GoogleMapController> _controllerGoogleMap = Completer();
  GoogleMapController newGoogleMapController;

  GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  Position currentPosition;
  var geoLocator = Geolocator();

  double bottomPaddingOfMap = 0;

  void locatePosition() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    currentPosition = position;

    LatLng latLatPosition = LatLng(position.latitude, position.longitude);

    CameraPosition cameraPosition =
        new CameraPosition(target: latLatPosition, zoom: 14);
    newGoogleMapController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
  }

  static final _initialCameraPosition = CameraPosition(
    target: LatLng(13.787239, 100.5804806),
    zoom: 11.5,
  );

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(
          'นำทาง',
          style: TextStyle(
              fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color.fromARGB(255, 57, 203, 91),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          GoogleMap(
            padding: EdgeInsets.only(bottom: 350.0),
            mapType: MapType.normal,
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: true,
            initialCameraPosition: _initialCameraPosition,
            onMapCreated: (GoogleMapController controller) {
              _controllerGoogleMap.complete(controller);
              newGoogleMapController = controller;

              locatePosition();
            },
          ),
          // Positioned(
          //     top: 45.0,
          //     left: 22.0,
          //     child: GestureDetector(
          //       onTap: () {
          //         scaffoldKey.currentState.openDrawer();
          //       },
          //       child: Container(
          //         decoration: BoxDecoration(
          //             color: Colors.white,
          //             borderRadius: BorderRadius.circular(22.0),
          //             boxShadow: [
          //               BoxShadow(
          //                 color: Colors.black,
          //                 blurRadius: 6.0,
          //                 spreadRadius: 0.5,
          //                 offset: Offset(0.7, 0.7),
          //               )
          //             ]),
          //         child: CircleAvatar(
          //           backgroundColor: Colors.white,
          //           child: Icon(
          //             Icons.menu,
          //             color: Colors.black,
          //           ),
          //           radius: 20.0,
          //         ),
          //       ),
          //     )),
          Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                height: 320.0,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0)),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          blurRadius: 16.0,
                          spreadRadius: 0.5,
                          offset: Offset(0.7, 0.7))
                    ]),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 24.0, vertical: 18.0),
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
                            Icons.navigation_outlined,
                            size: size.width * .10,
                            color: Colors.green,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CheckIn(),
                                  )).then((value) {});
                            },
                            child: new Text('เริ่มการนำทาง',
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
        ],
      ),
    );
  }
}
