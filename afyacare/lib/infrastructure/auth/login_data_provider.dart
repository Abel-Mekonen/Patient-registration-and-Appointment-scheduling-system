import 'dart:convert';
import 'package:afyacare/infrastructure/auth/login_model.dart';
import 'package:afyacare/infrastructure/auth/login_response_model.dart';
import 'package:afyacare/infrastructure/endpoints/endpoint.dart';
import 'package:http/http.dart' as http;

class AuthDataProvider {
  Future<LoginResponse> login(LoginUser loginUser) async {

    final response = await http.post(Uri.parse(EndPoint().baseUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8'
        },
        body: jsonEncode(loginUser));     
      return LoginResponse.fromJson(jsonDecode(response.body));
   
  }
}
