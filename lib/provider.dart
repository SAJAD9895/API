import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

import 'controller/apicall.dart';

// ignore: camel_case_types
class DataProvider with ChangeNotifier {
  ApiClass apiClass = ApiClass();
  int currentUser =1;

  late var datalist = apiClass.getprofile();

  updateCurrentUser(context, id) {
    currentUser = id;
    // ignore: curly_braces_in_flow_control_structures
    //for (int i = 0; i < currentUser; i++) 
    notifyListeners();
  }
}
