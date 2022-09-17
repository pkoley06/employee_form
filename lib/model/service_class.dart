import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:employee_form/model/register.dart';
import 'package:http/http.dart' as http;

Future<http.Response?> register(RegisterPage data) async {
  http.Response? response;
  try {
    response =
    await http.post(
        Uri.parse("http://127.0.0.1:5000/user/register"),
        headers: {
          HttpHeaders.contentTypeHeader: "application/json",
        },
        body: jsonEncode(data.toJson()));
  } catch (e) {
    log(e.toString());
  }
  return response;
}