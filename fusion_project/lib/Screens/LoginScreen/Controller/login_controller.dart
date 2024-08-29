import 'package:flutter/material.dart';

class LoginController {
  bool _checkboxValue = false;
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();

  void toogleCheckboxValue() {
    _checkboxValue = !_checkboxValue;
  }

  bool getCheckBoxValue() {
    return _checkboxValue;
  }

  TextEditingController getEmailTextController() {
    return _email;
  }

  TextEditingController getPasswordTextController() {
    return _password;
  }
}
