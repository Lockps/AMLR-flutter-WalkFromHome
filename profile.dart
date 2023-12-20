// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ProfileBg extends StatelessWidget {
  const ProfileBg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo[100],
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Positioned(
            top: -MediaQuery.of(context).size.width * 0.3,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.indigo[800],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(80),
                      bottomRight: Radius.circular(80))),
            ),
          ),
          ProfilePage()
        ]),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).size.height * 0.06,
          left: MediaQuery.of(context).size.width * 0.03,
          child: InkWell(
            onTap: () {
              print("object");
              Navigator.of(context).pop(context);
            },
            child: Container(
              child: Icon(
                Icons.arrow_back,
                size: MediaQuery.of(context).size.width * 0.07,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.027,
          child: Container(
            color: Colors.transparent,
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Text(
                "โปรไฟล์",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.height * 0.025,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.15,
          left: MediaQuery.of(context).size.width * 0.05,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: MediaQuery.of(context).size.width * 0.0001,
                      blurRadius: MediaQuery.of(context).size.width * 0.0001)
                ],
                border: Border.all(
                    color: Colors.grey.shade400,
                    width: MediaQuery.of(context).size.width * 0.003),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.53,
          left: MediaQuery.of(context).size.width * 0.05,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: MediaQuery.of(context).size.width * 0.001,
                      blurRadius: MediaQuery.of(context).size.width * 0.01)
                ],
                border: Border.all(
                    color: Colors.grey.shade400,
                    width: MediaQuery.of(context).size.width * 0.003),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.72,
          left: MediaQuery.of(context).size.width * 0.05,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: MediaQuery.of(context).size.width * 0.001,
                      blurRadius: MediaQuery.of(context).size.width * 0.01)
                ],
                border: Border.all(
                    color: Colors.grey.shade400,
                    width: MediaQuery.of(context).size.width * 0.003),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.9,
          left: MediaQuery.of(context).size.width * 0.4,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: MediaQuery.of(context).size.width * 0.001,
                      blurRadius: MediaQuery.of(context).size.width * 0.01)
                ],
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: MediaQuery.of(context).size.width * 0.2,
            height: MediaQuery.of(context).size.height * 0.05,
            child: Center(
              child: Text(
                "Logout",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: MediaQuery.of(context).size.height * 0.02),
              ),
            ),
          ),
        )
      ],
    );
  }
}
