import 'dart:math';

import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  List image = [
    "assets/image/google.jpg",
    "assets/image/bill gates.jpg",
    "assets/image/jeff bezos.jpg",
    "assets/image/mukesh ambani.jpg",
    "assets/image/tim cook.jpg",
    "assets/image/Shantanu_Narayen.jpg",
    "assets/image/Daniel_New-1.jpg",
    "assets/image/Harald_Krueger_Genf_2018.jpg",
    "assets/image/Michael_Dell_2010.jpg",
    "assets/image/bob swan.jpg",
  ];
  List name = [
    "Sundar Pichai",
    "Bill Gates",
    "Jeff Bezos",
    "Mukesh Ambani",
    "Tim Cook",
    "Shantanu Narayen",
    "Daniel Zhang",
    "Harald Kruger",
    "Michael Dell",
    "Bob Swan",
  ];
  List company = [
    "GOOGLE",
    "MICROSOFT",
    "AMAZONE",
    "RELIENCE LTD.",
    "APPLE",
    "ADOBE",
    "ALIBABA",
    "BMW",
    "DELL",
    "INTEL"
  ];
  List ncolor = [
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
    Colors.white,
    Colors.black,
  ];
  List boxcolor = [
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
    Colors.black.withOpacity(0.50),
    Colors.white.withOpacity(0.50),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text(
          "CEO of MNC's",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade200,
        elevation: 0,
      ),
      backgroundColor: Colors.blue.shade400,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: ([
                  Colors.lightBlueAccent,
                  Colors.lightBlue,
                  Colors.blue,
                  Colors.blueAccent.shade700,
                  Colors.blue.shade700,
                  Colors.purple,
                  Colors.purple.shade600,
                ]),
                transform: GradientRotation(pi / 2))),
        child: ListView.builder(
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Box(image[index], name[index], company[index], ncolor[index],
                boxcolor[index]),
          ),
        ),
      ),
    ));
  }

  Widget Box(
      String image, String name, String company, Color ncolor, Color boxcolor) {
    return Container(
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: boxcolor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            radius: 35,
            backgroundImage: AssetImage(
              image,
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(color: ncolor),
              ),
              Text(
                company,
                style: TextStyle(fontSize: 11, color: ncolor),
              ),
            ],
          ),
          Expanded(
              child: SizedBox(
            width: 10,
          )),
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                shape: BoxShape.circle, border: Border.all(color: ncolor)),
            alignment: Alignment.center,
            child: Icon(Icons.navigate_next, size: 20, color: ncolor),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
