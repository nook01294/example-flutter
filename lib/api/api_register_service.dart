import 'package:argon_flutter/model/register_model.dart';
import 'package:argon_flutter/model/respon_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class APIRegisterService {

  Future<ResponseModel> register(RegisterModel dataList) async {
    String url =
        "http://baiwa.ddns.net:9440/backend-example/api/user/register-user";

    // print(requestModel.toJson());

    final response = await http.post(
      Uri.parse(url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': dataList.username,
        'password': dataList.password,
        'name': dataList.name,
        'dateOfBirth': dataList.dateOfBirth,
        'email': dataList.email,
        'phone': dataList.phone
      }),
    );

    print(response.body);

    if (response.statusCode == 200 ||
        response.statusCode == 400 ||
        response.statusCode == 401) {
      ResponseModel data = ResponseModel.fromJson(
        json.decode(response.body),
      );
      return data;
    } else {
      throw Exception('Failed to load data!');
    }
  }
}
