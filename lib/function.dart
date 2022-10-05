import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_3/juice3.dart';
import 'package:flutter_application_3/seciondpage.dart';
import 'package:get/get.dart';

class Third extends StatefulWidget {
  @override
  State<Third> createState() => _ThirdState();
}

class _ThirdState extends State<Third> {
  @override
  Widget build(BuildContext context) {
    List images = [
      'images/berrie.jpg',
      'images/mixed.jpeg',
      'images/grapes.jpg',
      'images/oranges.jpeg',
      'images/starw.jpeg'
    ];

    List prices = ['Rs 150', 'Rs 250', 'Rs 150', 'Rs 200', 'Rs 150'];
    List desc = [
      'Lorem ipsum dolor sit amet,labore et dolore magna aliqua. Ut itation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'Lorem ipsum dolor sit amet,labore et dolore magna aliqua. Ut itation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'Lorem ipsum dolor sit amet,labore et dolore magna aliqua. Ut itation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'Lorem ipsum dolor sit amet,labore et dolore magna aliqua. Ut itation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
      'Lorem ipsum dolor sit amet,labore et dolore magna aliqua. Ut itation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    ];

    List name = ['Grapes', 'Mixed', 'Cherry', 'Oranges', 'Strawberry'];

    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
            child: Image.asset(
          'images/berries.jpg',
          fit: BoxFit.cover,
          color: Colors.black.withOpacity(0.5),
          colorBlendMode: BlendMode.darken,
        )),
        ListView(padding: EdgeInsets.symmetric(horizontal: 30), children: [
          SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Icon(
              Icons.sort,
              size: 50,
              color: Colors.white,
            ),
          ),
          Center(
              child: Text(
            "Healthy outside",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          Center(
              child: Text(
            "Start",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          Center(
              child: Text(
            "From inside",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 78.0, top: 30),
            child: Text(
              "We Provide a variety of juices with various flavours",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "Our Some Variants",
            style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
          ),
          Container(
            height: 280,
            child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Get.to(() => juice3({
                            'background': images[index],
                            'prices': prices[index],
                            'desc': desc[index],
                            'names':name[index]
                          }));
                    },
                    child: Column(
                      children: [
                        Hero(
                            tag: images[index],
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: index == 0 ? 0 : 20),
                              height: 200,
                              width: 140,
                              decoration: BoxDecoration(
                                  color: Colors.pink,
                                  image: DecorationImage(
                                      image: AssetImage(images[index]),
                                      fit: BoxFit.cover)),
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Center(
                          child: Text(
                            name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                        Center(
                          child: Text(
                            prices[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  );
                })),
          ),
        ])
      ]),
    );
  }
}
