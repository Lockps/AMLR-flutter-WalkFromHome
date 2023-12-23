// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:location/location.dart';

class OnWalk extends StatefulWidget {
  const OnWalk({super.key});

  @override
  State<OnWalk> createState() => _OnWalkState();
}

class _OnWalkState extends State<OnWalk> {
  Location location = Location();
  bool _isSericeEnable = false;
  PermissionStatus _permissionStatus = PermissionStatus.denied;

  double? lat;
  double? lng;
  double? oldlat;
  double? oldlng;

  Timer? timer;

  double distance = 0;

  @override
  void initState() {
    print(lat);
    print(lng);
    super.initState();
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      getLocation();
      calculateDistance(oldlat, oldlng, lat, lng);
    });
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void calculateDistance(
      double? lat1, double? lng1, double? lat2, double? lng2) {
    // Radius of the Earth in kilometers
    const r = 6371.0;

    double lat1rad = degree2radian(lat1);
    double lng1rad = degree2radian(lng1);
    double lat2rad = degree2radian(lat2);
    double lng2rad = degree2radian(lng2);

    double dlng = lng2rad - lng1rad;
    double dlat = lat2rad - lat1rad;

    double a = sin(dlat / 2);
    double b = sin(dlng / 2);

    double samp = a * a + cos(lat1rad) * cos(lat2rad) * b * b;
    double value = 2 * atan2(sqrt(samp), sqrt(1 - samp));
    double op = value * r;

    if (op > 0.05) op = 0;

    setState(() {
      distance += op * 1000;
    });

    print(op);
  }

  double degree2radian(double? degree) {
    return degree ?? 0 * 0.0174533;
  }

  Future<void> getLocation() async {
    if (!_isSericeEnable) getService();
    if (_permissionStatus != PermissionStatus.granted) getPermission();

    LocationData x = await location.getLocation();
    setState(() {
      oldlat = lat;
      oldlng = lng;
      lat = x.latitude ?? 0;
      lng = x.longitude ?? 0;
    });
  }

  Future<void> getService() async {
    _isSericeEnable = await location.serviceEnabled();
    if (!_isSericeEnable) {
      _isSericeEnable = await location.requestService();
      if (!_isSericeEnable) {
        const SnackBar(
          content: Text("Service Error"),
        );
      }
    }
  }

  Future<void> getPermission() async {
    _permissionStatus = await location.hasPermission();
    if (_permissionStatus == PermissionStatus.denied) {
      _permissionStatus = await location.requestPermission();
      if (_permissionStatus != PermissionStatus.granted) {
        const SnackBar(
          content: Text("Permission Failed"),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.green[200],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(lat.toString()),
              Text(lng.toString()),
              Text(distance.toString()),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      distance = 0;
                    });
                  },
                  child: Text("Press"))
            ],
          ),
        ),
      ),
    );
  }
}
