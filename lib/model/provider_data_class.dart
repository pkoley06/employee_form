import 'package:employee_form/model/register.dart';
import 'package:employee_form/model/service_class.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProviderDataClass extends ChangeNotifier {
  bool loading = false;
  bool isBack = false;
  Future<void> postData(RegisterPage body) async {
    loading = true;
    notifyListeners();
    http.Response? response = await register(body);
    if (response?.statusCode == 200) {
      isBack = true;

    }
    loading = false;
    notifyListeners();
  }
}