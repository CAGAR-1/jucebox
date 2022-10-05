import 'package:flutter/material.dart';
import 'package:flutter_application_3/function.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class second_Page extends StatefulWidget {
  const second_Page({super.key});

  @override
  State<second_Page> createState() => _second_PageState();
}

class _second_PageState extends State<second_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'images/berries.jpg',
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.5),
              colorBlendMode: BlendMode.darken,
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.sort,
                  color: Colors.white,
                  size: 80,
                ),
              ),
              Center(
                child: Text(
                  "Juicy",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: FaIcon(
                FontAwesomeIcons.champagneGlasses,
                color: Colors.white,
                size: 100,
              )),
              SizedBox(height: 30),
              Center(
                child: Text(
                  "Berry juice",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "blend of berry with ice that make our tried day feels very fresh again",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  "Rs 100/ Glass",
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(Third());
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.white)),
                    height: 50,
                    width: 200,
                    child: Center(
                        child: Text(
                      "Explore more",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              )
            ],
          )
        ],
      ),
    );
  }
}
