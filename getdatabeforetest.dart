import 'package:flutter/material.dart';
import 'package:walkfromhome_rebuildproject/getweightheight.dart';

class GetDataBeforeTest extends StatefulWidget {
  const GetDataBeforeTest({super.key});

  @override
  State<GetDataBeforeTest> createState() => _GetDataBeforeTestState();
}

class _GetDataBeforeTestState extends State<GetDataBeforeTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FormBeforeTest(),
    );
  }
}

class FormBeforeTest extends StatefulWidget {
  const FormBeforeTest({super.key});

  @override
  State<FormBeforeTest> createState() => _FormBeforeTestState();
}

class _FormBeforeTestState extends State<FormBeforeTest> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.grey,
      child: Stack(children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.07,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.08,
            color: Colors.red,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.2,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.27,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.36,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.43,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.52,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.59,
          left: MediaQuery.of(context).size.width * 0.03,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.amber,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.68,
          left: MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.05,
            color: Colors.blue,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.78,
          left: MediaQuery.of(context).size.width * 0.12,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.78,
          right: MediaQuery.of(context).size.width * 0.12,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            color: Colors.black,
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.88,
          left: MediaQuery.of(context).size.width * 0.25,
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => GetWH()));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.05,
              color: Colors.red,
            ),
          ),
        )
      ]),
    );
  }
}
