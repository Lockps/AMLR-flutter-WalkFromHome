import 'package:flutter/material.dart';
import 'package:walkfromhome_rebuildproject/getdatabeforetest.dart';

void main(List<String> args) async {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green,
        child: FirstPage(),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          left: MediaQuery.of(context).size.width * 0.05,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.2,
            color: Colors.red,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.55,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.06,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.65,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.06,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.75,
          left: MediaQuery.of(context).size.width * 0.2,
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => GetDataBeforeTest()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.06,
              color: Colors.amber,
            ),
          ),
        ),
      ],
    );
  }
}
