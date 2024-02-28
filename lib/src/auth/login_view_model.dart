import 'package:flutter/material.dart';

class LoginViewModel {
  LoginViewModel();
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();
  final formKey = GlobalKey<FormState>();
}
