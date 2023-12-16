import 'package:flutter/material.dart';

class GetWH extends StatefulWidget {
  const GetWH({super.key});

  @override
  State<GetWH> createState() => _GetWHState();
}

class _GetWHState extends State<GetWH> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
