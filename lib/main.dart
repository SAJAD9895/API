// ignore_for_file: duplicate_import

import 'package:api/provider.dart';
import 'package:api/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:api/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (context) => DataProvider(),)],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    ),
  ));
}
