// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:walkfromhome_rebuildproject/loginpage.dart';
import 'package:walkfromhome_rebuildproject/testlatlng/distance.dart';
import 'package:walkfromhome_rebuildproject/teststep/test.dart';
import 'package:walkfromhome_rebuildproject/teststep/test01.dart';

void main(List<String> args) {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  runApp(Test());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}
