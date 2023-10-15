import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  bool _loading = false;
  bool get loading => _loading;

  void setLoading(value) {
    _loading = value;
    notifyListeners();
  }

  void Login(String email, String passoward) async {
    setLoading(true);
    try {
      Response response = await post(Uri.parse('https://reqres.in/api/login'),
          body: {'email': email, 'password': passoward});

      if (response.statusCode == 200) {
        setLoading(false);
        print('loginSucessFully');
      } else {
        print('failed');
        setLoading(false);
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }
}
