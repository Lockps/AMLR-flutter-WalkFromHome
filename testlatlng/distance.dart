// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:walkfromhome_rebuildproject/testlatlng/getlocation.dart';

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  GetLocation samp = GetLocation();

  double? lat, lng = 0;

  @override
  void initState() {
    super.initState();
  }

  Future<void> getcurrentLocation() async {
    LocationData? current = await GetLocation().getLocationData();
    setState(() {
      lat = current.latitude;
      lng = current.longitude;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Lat is $lat"),
              Text("Lng is $lng"),
              ElevatedButton(
                  onPressed: () => getcurrentLocation(),
                  child: Icon(Icons.location_city))
            ],
          ),
        ),
      ),
    );
  }
}
