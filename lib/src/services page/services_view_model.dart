import 'package:flutter/material.dart';

class ServicesViewModel {
  ServicesViewModel();
  TextEditingController stationClassification = TextEditingController();
  TextEditingController stationClass = TextEditingController();
  TextEditingController proposedLoction = TextEditingController();
  TextEditingController stationCoordenates = TextEditingController();
  TextEditingController stationAddress = TextEditingController();
  TextEditingController delegateName = TextEditingController();
  TextEditingController iDNumber = TextEditingController();
  TextEditingController authNumber = TextEditingController();
  TextEditingController signDigit = TextEditingController();
  TextEditingController uploadDoc = TextEditingController();
  final formKey = GlobalKey<FormState>();
  String stationTypeMaterial = '';
  List<String> stationType = ['option1', 'option2'];
}
