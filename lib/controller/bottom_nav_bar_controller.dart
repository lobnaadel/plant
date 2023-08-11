import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled1/View/add_new_plant.dart';
import 'package:untitled1/View/profile_screen.dart';
import 'package:untitled1/homepage/homescreen.dart';


class MyPlanetApp extends StatefulWidget {
  @override
  _MyPlanetAppState createState() => _MyPlanetAppState();
}

class _MyPlanetAppState extends State<MyPlanetApp> {
  int selectedIdx = 0;

  final List<Widget> screensList = [
    // LoginScreen(),
    // DetailArticleScreen(),
    homescreen(),
    PlantFormDialog(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensList[selectedIdx],
      bottomNavigationBar: buildBottomNavBar(),
    );
  }

  Widget buildBottomNavBar() {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Colors.white70,
      items: <Widget>[
        Column(
          children: [
            CircleAvatar(
              child: SvgPicture.asset("images/svg/home.svg"),
              backgroundColor: Colors.white,
              radius: 30,
            ),
            const Text(
              "Home",
              style: TextStyle(
                color: Color(0xFF2CD992),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              child: SvgPicture.asset("images/svg/add.svg"),
              backgroundColor: Colors.blue,
            ),
          ],
        ),
        Column(
          children: [
            CircleAvatar(
              child: SvgPicture.asset("images/svg/profile.svg"),
              backgroundColor: Colors.white,
            ),
            const Text(
              "PROFILE",
              style: TextStyle(
                color: Color(0xFFD2D2D2),
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
      onTap: (index) {
        setState(() {
          selectedIdx = index;
        });
      },
    );
  }
}
