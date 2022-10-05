import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class juice3 extends StatefulWidget {
  Map details;
  juice3(
    this.details,
  );

  @override
  State<juice3> createState() => _juice3State();
}

class _juice3State extends State<juice3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
              child: Hero(
                  tag: widget.details['background'],
                  child: Image.asset(
                    widget.details['background'],
                    fit: BoxFit.cover,
                    color: Colors.black.withOpacity(0.5),
                    colorBlendMode: BlendMode.darken,
                  ))),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 30),
            children: [
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Icon(
                  Icons.local_fire_department_rounded,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              Container(
                margin: EdgeInsets.all(20),
                height: 300,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          blurRadius: 5,
                          offset: Offset(3, 3))
                    ],
                    image: DecorationImage(
                        image: AssetImage(widget.details['background']),
                        fit: BoxFit.cover)),
              ),
              Column(
                children: [
                  Text(
                    widget.details['names'],
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.details['desc'],
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Center(
                  child: Text(
                    widget.details['prices'],
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                ),
              ),
              Center(
                child: Container(
                  height: 80,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: Colors.white)),
                  child: Center(
                    child: Text(
                      "Buy",
                      style: TextStyle(fontSize: 50, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          )
        ],
      ),
    );
  }
}
