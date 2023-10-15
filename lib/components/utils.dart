import 'package:flutter/material.dart';

class Utills {
  void onfield(BuildContext context, FocusNode current, FocusNode next) {
    current.unfocus();

    FocusScope.of(context).requestFocus(next);
  }
}
