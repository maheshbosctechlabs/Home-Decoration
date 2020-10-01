import 'package:Home_Decoration/common/color_constants.dart';
import 'package:Home_Decoration/social_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Stack(
            children: [
              Container(
                child: Column(children: [
                  Container(
                    height: screenHeight / 2,
                    width: screenWidth,
                    color: ColorConstants.kredColor,
                    child: Image.asset('assets/images/bg_img.png',
                        fit: BoxFit.fill),
                  ),
                ]),
              ),
              Positioned(
                  child: Column(
                children: [
                  _logoimg(),
                  _lamp(context),
                  _gallery(),
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logoimg() {
    return Container(
      height: 180,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 35.0,
                  top: 50,
                ),
                child: Container(
                  height: 101,
                  child: Column(
                    children: [
                      Text(
                        'STUFF',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: ColorConstants.kredColor),
                      ),
                      Text(
                        'Decor',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w900,
                          fontFamily: "someday",
                          color: ColorConstants.kwhiteColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  right: 25,
                  top: 15,
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/my_pic.png'),
                  radius: 25,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _lamp(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      textDirection: TextDirection.rtl,
      children: [
        Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/square_lamp.png',
                height: 300,
                width: 150,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 50,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: FloatingActionButton(
                  heroTag: "btn_temp1",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SocialPage(),
                    ));
                  },
                  child: Icon(
                    Icons.add,
                    color: ColorConstants.kwhiteColor,
                    size: 35,
                  ),
                  backgroundColor: ColorConstants.kredColor,
                ),
              ),
            ),
          ],
        ),
        Stack(
          children: [
            Positioned(
              child: Image.asset(
                'assets/images/long_lamp.png',
                height: 300,
                width: 150,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 50,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                child: FloatingActionButton(
                  heroTag: "btn_temp2",
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SocialPage(),
                    ));
                  },
                  child: Icon(
                    Icons.add,
                    color: ColorConstants.kwhiteColor,
                    size: 35,
                  ),
                  backgroundColor: ColorConstants.kredColor,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _gallery() {
    return Container(
      height: 345,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 260,
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                      right: 120,
                      bottom: 10,
                    ),
                    child: Text('Decorative Stuff',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.kredColor,
                        )),
                  ),
                  Row(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            color: ColorConstants.kredaccentColor,
                            width: 130,
                            height: 130,
                            child: Image.asset(
                              'assets/images/living_room.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              child: Text('Living Room',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstants.kwhiteColor,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            color: ColorConstants.kredaccentColor,
                            width: 130,
                            height: 130,
                            child: Image.asset(
                              'assets/images/bedroom.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              child: Text('Bedroom',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstants.kwhiteColor,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            color: ColorConstants.kredaccentColor,
                            width: 130,
                            height: 130,
                            child: Image.asset(
                              'assets/images/office.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              child: Text('Office',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstants.kwhiteColor,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        overflow: Overflow.visible,
                        children: [
                          Container(
                            color: ColorConstants.kredaccentColor,
                            width: 130,
                            height: 130,
                            child: Image.asset(
                              'assets/images/other.png',
                              fit: BoxFit.fill,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 20,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: 0,
                                vertical: 0,
                              ),
                              child: Text('Other',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorConstants.kwhiteColor,
                                  )),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Stack(
            overflow: Overflow.visible,
            children: [
              Container(
                height: 400,
                width: 10,
              ),
              Positioned(
                right: -185,
                top: 100,
                child: RotationTransition(
                    turns: AlwaysStoppedAnimation(90 / 360),
                    child: Text(
                      'Decor',
                      style: TextStyle(
                        fontSize: 110,
                        fontWeight: FontWeight.w900,
                        color: ColorConstants.kblackColor,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
