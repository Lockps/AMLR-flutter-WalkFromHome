// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:walkfromhome_rebuildproject/profile.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[200],
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.03,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(color: Colors.indigo[800]),
                child: Row(children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.05,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                            image: AssetImage("./img/logo.png"),
                            fit: BoxFit.fitWidth)),
                  ),
                  Spacer(),
                  Container(
                      decoration: BoxDecoration(color: Colors.transparent),
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.2,
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProfileBg(),
                          ));
                        },
                        child: Icon(
                          Icons.person,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.1,
                        ),
                      ))
                ]),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.13,
              left: 0,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Center(
                    child: Text(
                  "ระยะทางที่เดินได้ 5 ครั้งล่าสุด",
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.025,
                      fontWeight: FontWeight.w600),
                )),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.2,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.3,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.53,
              left: MediaQuery.of(context).size.width * 0.05,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.7),
                          spreadRadius: 1,
                          blurRadius: 5)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.37,
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(color: Colors.indigo[800]),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.3,
                      height: MediaQuery.of(context).size.height * 0.04,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          "เริ่มทดสอบ",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.02),
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
