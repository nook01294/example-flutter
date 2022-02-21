import 'dart:ui';
import 'package:argon_flutter/api/api_register_service.dart';
import 'package:argon_flutter/model/register_model.dart';
import 'package:flutter/material.dart';
import 'package:argon_flutter/constants/Theme.dart';

//widgets
import 'package:argon_flutter/widgets/input.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final heightPercent = Get.height / 100;
  bool _checkboxValue = false;
  TextEditingController dateinput = TextEditingController();
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  bool hidePassword = true;
  bool isApiCallProcess = false;

  final double height = window.physicalSize.height;
  RegisterModel regis = new RegisterModel();

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form != null) {
      if (form.validate()) {
        form.save();
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/register-bg.png"),
                  fit: BoxFit.cover)),
        ),
        SafeArea(
          child: ListView(children: [
            Padding(
                padding: const EdgeInsets.only(
                    top: 16, left: 24.0, right: 24.0, bottom: 32),
                child: Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                      // height: MediaQuery.of(context).size.height * 1.0,
                      color: NowUIColors.bgColorScreen,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              SizedBox(
                                height: heightPercent * 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 5.0,
                                ),
                                child: Center(
                                  child: Text("Sign up",
                                      style: TextStyle(
                                          color: ArgonColors.black,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20)),
                                ),
                              ),
                              SizedBox(
                                height: heightPercent * 5,
                              ),
                              Form(
                                  key: globalFormKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Username"
                                              : null,
                                          onSaved: (input) =>
                                              regis.username = input,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.people_alt,
                                                size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Username',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          obscureText: hidePassword,
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Password"
                                              : null,
                                          onSaved: (input) =>
                                              regis.password = input,
                                          decoration: InputDecoration(
                                            prefixIcon:
                                                Icon(Icons.lock, size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Password',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Full Name"
                                              : null,
                                          onSaved: (input) =>
                                              regis.name = input,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.account_box,
                                                size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Name',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          controller: dateinput,
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Date of Birth"
                                              : null,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                                Icons.calendar_today,
                                                size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Date of Birth',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                          onTap: () async {
                                            DateTime pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime(
                                                        2000), //DateTime.now() - not to allow to choose before today.
                                                    lastDate: DateTime(2101));

                                            if (pickedDate != null) {
                                              print(
                                                  pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                              regis.dateOfBirth =
                                                  DateFormat('yyyy-MM-dd')
                                                      .format(pickedDate);
                                              print(regis
                                                  .dateOfBirth); //formatted date output using intl package =>  2021-03-16
                                              //you can implement different kind of Date Format here according to your requirement

                                              setState(() {
                                                dateinput.text = regis
                                                    .dateOfBirth; //set output date to TextField value.
                                              });
                                            }
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Email"
                                              : null,
                                          onSaved: (input) =>
                                              regis.email = input,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            prefixIcon:
                                                Icon(Icons.email, size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Email',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 8.0, left: 8.0, right: 8.0),
                                        child: TextFormField(
                                          validator: (input) => input.isEmpty
                                              ? "Please enter Phone Number"
                                              : null,
                                          onSaved: (input) =>
                                              regis.phone = input,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            prefixIcon: Icon(
                                                Icons.phone_android,
                                                size: 20),
                                            filled: true,
                                            fillColor: Colors.white,
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.blue,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            hintText: 'Phone Number',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Checkbox(
                                                activeColor:
                                                    ArgonColors.primary,
                                                onChanged: (bool newValue) =>
                                                    setState(() =>
                                                        _checkboxValue =
                                                            newValue),
                                                value: _checkboxValue),
                                            Text("I agree with the",
                                                style: TextStyle(
                                                    color: ArgonColors.muted,
                                                    fontWeight:
                                                        FontWeight.w200)),
                                            GestureDetector(
                                                onTap: () {
                                                  // Navigator.pushNamed(
                                                  //     context, '/pro');
                                                },
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(left: 5),
                                                  child: Text("Privacy Policy",
                                                      style: TextStyle(
                                                          color: ArgonColors
                                                              .primary)),
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: heightPercent * 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: Center(
                                  child: FlatButton(
                                    textColor: ArgonColors.white,
                                    color: ArgonColors.primary,
                                    onPressed: () {
                                      if (validateAndSave()) {
                                        print(regis.username);
                                        print(regis.password);
                                        print(regis.name);
                                        print(regis.dateOfBirth);
                                        print(regis.email);
                                        print(regis.phone);

                                        setState(() {
                                          isApiCallProcess = true;
                                        });

                                        APIRegisterService apiRegisterService =
                                            new APIRegisterService();
                                        apiRegisterService
                                            .register(regis)
                                            .then((value) {
                                          if (value.status == "SUCCESS") {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    content: Text(
                                                        'Register Success'),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                          onPressed: () {
                                                            Navigator
                                                                .pushReplacementNamed(
                                                                    context,
                                                                    '/login');
                                                          },
                                                          child: Text('ok'))
                                                    ],
                                                  );
                                                });
                                          } else {
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    content: Text(
                                                        'Error Register User'),
                                                    actions: <Widget>[
                                                      FlatButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context,
                                                                    rootNavigator:
                                                                        true)
                                                                .pop('dialog');
                                                          },
                                                          child: Text('close'))
                                                    ],
                                                  );
                                                });
                                          }
                                        });
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0),
                                    ),
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 16.0,
                                            right: 16.0,
                                            top: 12,
                                            bottom: 12),
                                        child: Text("REGISTER",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0))),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                )),
          ]),
        )
      ],
    ));
  }
}
