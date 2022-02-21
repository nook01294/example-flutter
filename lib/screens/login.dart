import 'dart:ui';
import 'package:argon_flutter/api/api_service.dart';
import 'package:argon_flutter/constants/Theme.dart';
import 'package:argon_flutter/screens/register.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//widgets

class Login extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Login> {
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  bool _checkboxValue = false;
  bool hidePassword = true;
  bool isApiCallProcess = false;

  String username;
  String password;

  final double height = window.physicalSize.height;

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
                  image: AssetImage("assets/img/register-bg1.png"),
                  fit: BoxFit.cover)),
        ),
        SafeArea(
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 50, left: 16.0, right: 16.0, bottom: 32),
              child: Card(
                  elevation: 5,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  child: Container(
                      height: MediaQuery.of(context).size.height * 0.78,
                      color: NowUIColors.bgColorScreen,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 24.0, bottom: 8),
                                child: Center(
                                    child: Text("Sign In",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w600))),
                              ),
                              Form(
                                key: globalFormKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        onSaved: (input) => username = input,
                                        validator: (input) => input.length < 1
                                            ? "Please enter your username"
                                            : null,
                                        decoration: InputDecoration(
                                            prefixIcon: Icon(Icons.people_alt,
                                                size: 20),
                                            filled: true,
                                            fillColor: Colors.blueGrey[50],
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            hintText: 'Username',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        keyboardType: TextInputType.text,
                                        onSaved: (input) => password = input,
                                        validator: (input) => input.length < 1
                                            ? "Please enter your password"
                                            : null,
                                        obscureText: hidePassword,
                                        decoration: InputDecoration(
                                            prefixIcon:
                                                Icon(Icons.lock, size: 20),
                                            suffixIcon: IconButton(
                                              onPressed: () {
                                                setState(() {
                                                  hidePassword = !hidePassword;
                                                });
                                              },
                                              icon: Icon(hidePassword
                                                  ? Icons.visibility_off
                                                  : Icons.visibility),
                                            ),
                                            filled: true,
                                            fillColor: Colors.blueGrey[50],
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide.none,
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            hintText: 'Password',
                                            contentPadding:
                                                EdgeInsets.all(10.0),
                                            labelStyle: TextStyle(
                                              fontWeight: FontWeight.bold,
                                            )),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 8.0, top: 0, bottom: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Checkbox(
                                              activeColor: NowUIColors.primary,
                                              onChanged: (bool newValue) =>
                                                  setState(() =>
                                                      _checkboxValue =
                                                          newValue),
                                              value: _checkboxValue),
                                          Text("Remember me",
                                              style: TextStyle(
                                                  color: NowUIColors.black,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w200)),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15.0),
                                      child: Center(
                                          child: Row(children: <Widget>[
                                        Expanded(
                                            child: Divider(
                                          color: Colors.grey,
                                          height: 1,
                                          indent: 15,
                                          endIndent: 20,
                                        )),
                                        Text("or",
                                            style: TextStyle(
                                                color: NowUIColors.time,
                                                fontWeight: FontWeight.w200,
                                                fontSize: 16)),
                                        Expanded(
                                            child: Divider(
                                          color: Colors.grey,
                                          height: 1,
                                          indent: 15,
                                          endIndent: 20,
                                        )),
                                      ])),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 15.0),
                                      child: Center(
                                        child: Text("Sign in with"),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 4.0,
                                          fillColor: NowUIColors.socialFacebook,
                                          child: Icon(FontAwesomeIcons.facebook,
                                              size: 16.0, color: Colors.white),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 4.0,
                                          fillColor: NowUIColors.socialTwitter,
                                          child: Icon(FontAwesomeIcons.twitter,
                                              size: 16.0, color: Colors.white),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        ),
                                        RawMaterialButton(
                                          onPressed: () {},
                                          elevation: 4.0,
                                          fillColor: NowUIColors.socialDribbble,
                                          child: Icon(FontAwesomeIcons.dribbble,
                                              size: 16.0, color: Colors.white),
                                          padding: EdgeInsets.all(15.0),
                                          shape: CircleBorder(),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Center(
                                child: RaisedButton(
                                  textColor: NowUIColors.white,
                                  color: NowUIColors.info,
                                  onPressed: () {
                                    if (validateAndSave()) {
                                      print(username);
                                      print(password);

                                      setState(() {
                                        isApiCallProcess = true;
                                      });

                                      APIService apiService = new APIService();
                                      apiService
                                          .login(username, password)
                                          .then((value) {
                                        if (value != null) {
                                          setState(() {
                                            isApiCallProcess = false;
                                          });

                                          if (value.token.isNotEmpty) {
                                            final snackBar = SnackBar(
                                                content:
                                                    Text("Login Successful"));
                                            scaffoldKey.currentState
                                                ?.showSnackBar(snackBar);
                                            Navigator.pushReplacementNamed(
                                                context, '/home');
                                          } else {
                                            // final snackBar = SnackBar(
                                            //     content: Text(value.error));
                                            // scaffoldKey.currentState!
                                            //     .showSnackBar(snackBar);
                                            showDialog(
                                                context: context,
                                                builder:
                                                    (BuildContext context) {
                                                  return AlertDialog(
                                                    content:
                                                        Text('User Not Found'),
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
                                        }
                                      });
                                    } else if (username != null &&
                                        password != null) {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              content: Text('Login Fail'),
                                              actions: <Widget>[
                                                FlatButton(
                                                    onPressed: () {
                                                      Navigator.of(context,
                                                              rootNavigator:
                                                                  true)
                                                          .pop('dialog');
                                                    },
                                                    child: Text('close'))
                                              ],
                                            );
                                          });
                                    }
                                    // Navigator.of(context).push(
                                    //     MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             Home()));
                                    // Respond to button press
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0),
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(
                                          left: 100.0,
                                          right: 100.0,
                                          top: 12,
                                          bottom: 12),
                                      child: Text("Login",
                                          style: TextStyle(fontSize: 14.0))),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10.0),
                                child: Center(
                                    child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) => Register()));
                                  },
                                  child: Text(
                                    "Don't have Account? Sign Up",
                                    textAlign: TextAlign.center,
                                  ),
                                )),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.only(left: 10.0),
                              //   child: RichText(
                              //     text: TextSpan(
                              //         text: "Don't have Account? ",
                              //         style:
                              //             TextStyle(color: ArgonColors.muted),
                              //         children: [
                              //           TextSpan(
                              //             text: "Sign Up",
                              //             style: TextStyle(
                              //               fontWeight: FontWeight.w600,
                              //             ),
                              //             recognizer: new TapGestureRecognizer()
                              //               ..onTap = () =>
                              //                   Navigator.of(context).push(
                              //                       MaterialPageRoute(
                              //                           builder: (context) =>
                              //                               Register())),
                              //           )
                              //         ]),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ))),
            ),
          ]),
        )
      ],
    ));
  }
}
