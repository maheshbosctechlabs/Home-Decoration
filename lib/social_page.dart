import 'package:Home_Decoration/common/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          backgroundColor: ColorConstants.kwhiteColor,
          elevation: 0,
          leading: Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: Container(
                child: IconButton(
                  icon: (SvgPicture.asset('assets/svg-icons/next.svg')),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  tooltip: 'Menu',
                ),
              ),
            ),
          ),
          title: Align(
            alignment: AlignmentDirectional.topEnd,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 0),
                child: Text(
                  'Social',
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w900,
                      color: ColorConstants.kdblackColor),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            child: Column(
              children: [
                _imgDec(),
                _lampPlant(),
                _wishList(),
                _contactAddress(screenWidth),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _imgDec() {
    return Container(
      color: ColorConstants.kwhiteColor,
      child: Row(
        children: [
          SizedBox(width: 20),
          Container(
            child: Image.asset("assets/images/table_cof.png", height: 50),
          ),
          SizedBox(width: 20),
          Column(
            children: <Widget>[
              Container(
                child: Text(
                  'Home Decor Corp.',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: ColorConstants.kdblackColor),
                ),
              ),
              Container(
                child: Text(
                  'Add beauty around you',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                      color: ColorConstants.kdblackColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _lampPlant() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        color: ColorConstants.kwhiteColor,
        child: Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 80,
                      child: Image.asset("assets/images/bulb_3.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/other.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        child: Text(
                          'Lamp',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: ColorConstants.kwhiteColor),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.5, left: 1),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 120,
                              color: ColorConstants.kgreenColor,
                              child: Image.asset(
                                "assets/images/bulb_1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    height: 65,
                                    width: 120,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/bulb_2.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 30,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          heroTag: "btn_temp1",
                          onPressed: () {},
                          child: new Icon(Icons.people,
                              color: ColorConstants.kwhiteColor, size: 25),
                          backgroundColor: ColorConstants.kredColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 80,
                      child: Image.asset("assets/images/plant_1.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/other.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.5, left: 1),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 120,
                              color: ColorConstants.kgreenColor,
                              child: Image.asset(
                                "assets/images/plant_2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    height: 65,
                                    width: 120,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/plant_3.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 30,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          heroTag: "btn_hello2",
                          onPressed: () {},
                          child: new Icon(Icons.people,
                              color: ColorConstants.kwhiteColor, size: 25),
                          backgroundColor: ColorConstants.kredColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        child: Text(
                          'Plant',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: ColorConstants.kdblackColor),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 80,
                      child: Image.asset("assets/images/bulb_3.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/other.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        child: Text(
                          'Lamp',
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              color: ColorConstants.kwhiteColor),
                        ),
                      ),
                    )
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.5, left: 1),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 120,
                              color: ColorConstants.kgreenColor,
                              child: Image.asset(
                                "assets/images/bulb_1.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    height: 65,
                                    width: 120,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/bulb_2.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 30,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          heroTag: "btn_temp123",
                          onPressed: () {},
                          child: new Icon(Icons.people,
                              color: ColorConstants.kwhiteColor, size: 25),
                          backgroundColor: ColorConstants.kredColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 20),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 80,
                      child: Image.asset("assets/images/plant_1.png"),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 10,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 30,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/other.png'))),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 50,
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage('assets/images/my_pic.png'))),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      height: 170,
                      width: 80,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 17.5, left: 1),
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 70,
                              width: 120,
                              color: ColorConstants.kgreenColor,
                              child: Image.asset(
                                "assets/images/plant_2.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                            Stack(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    height: 65,
                                    width: 120,
                                    child: Container(
                                      child: Image.asset(
                                        "assets/images/plant_3.png",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 7,
                      left: 30,
                      child: Container(
                        height: 30,
                        width: 30,
                        child: FloatingActionButton(
                          heroTag: "btn_hello223",
                          onPressed: () {},
                          child: new Icon(Icons.people,
                              color: ColorConstants.kwhiteColor, size: 25),
                          backgroundColor: ColorConstants.kredColor,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Container(
                        child: Text(
                          'Plant',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: ColorConstants.kdblackColor,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _wishList() {
    return Container(
      color: ColorConstants.kwhiteColor,
      child: Padding(
        padding: EdgeInsets.only(
          top: 8.0,
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 38.0, right: 18),
              child: Container(
                child: Text(
                  'Wish\n' + 'List',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w300,
                    color: ColorConstants.kredColor,
                  ),
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 32,
                    left: 52,
                  ),
                  child: Container(
                      height: 96,
                      width: 170,
                      child: Image.asset(
                        'assets/images/table_cof.png',
                        fit: BoxFit.fill,
                      )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 25,
                    left: 12,
                  ),
                  child: Container(
                      height: 110,
                      width: 199,
                      child: Image.asset(
                        'assets/images/table_cof.png',
                        fit: BoxFit.fill,
                      )),
                ),
                Container(
                  height: 160,
                  width: 200,
                  child: Image.asset('assets/images/table_cof.png'),
                ),
                Positioned(
                  top: -10,
                  left: -30,
                  child: Container(
                    child: Image.asset(
                      'assets/images/table_cof.png',
                      height: 180,
                      width: 220,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _contactAddress(screenWidth) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 343,
              width: screenWidth,
              child: Image.asset(
                'assets/images/map_new.png',
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 22,
                  top: 80,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 80,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Visit Us At',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.kredColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '1728 Stoyen Lane, \n' + 'Dallas, Texas',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorConstants.kdblackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 40,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Meet Us Virtually',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: ColorConstants.kredColor,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'info@stuffdecore.com',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                color: ColorConstants.kdblackColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50,
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/facebook_logo_org.png',
                            width: 20,
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                            ),
                            child: Image.asset(
                              'assets/images/instagram_logo_org.png',
                              width: 20,
                              height: 20,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 8,
                            ),
                            child: Image.asset(
                              'assets/images/twitter_logo_org.png',
                              width: 20,
                              height: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
