// ignore_for_file: await_only_futures, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pedometer/pedometer.dart';

class Test01 extends StatefulWidget {
  const Test01({super.key});

  @override
  State<Test01> createState() => _Test01State();
}

class _Test01State extends State<Test01> {
  late Stream<StepCount> stepCountStream;
  late Stream<PedestrianStatus> pedestrianStatusStream;

  int steps = 0;
  String status = 'lsakda';

  void onStepCount(StepCount event) {
    setState(() {
      steps += event.steps;
    });
  }

  void onPedestrianStatusChanged(PedestrianStatus event) {
    status = event.status;
  }

  Future<void> initPlatformState() async {
    pedestrianStatusStream = await Pedometer.pedestrianStatusStream;
    stepCountStream = await Pedometer.stepCountStream;

    stepCountStream.listen(onStepCount);
    pedestrianStatusStream.listen(onPedestrianStatusChanged);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                steps.toString(),
                style: TextStyle(fontSize: 60),
              ),
              Text(status)
            ],
          ),
        ),
      )),
    );
  }
}
