import 'package:bollu_app/booking/booking.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/home/home.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/profile/profile.dart';
import 'package:bollu_app/search/search.dart';
import 'package:bollu_app/search/search_main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/main.dart';

class home_page1 extends StatefulWidget {
  const home_page1({super.key});

  @override
  State<home_page1> createState() => _home_page1State();
}

class _home_page1State extends State<home_page1> {

  int select=0;
  List pages=[
    Home(),
    searchmain(),
    booking(),
    profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colorTheme.secondaryColor,
      body: pages[select],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: colorTheme.secondaryColor,
          selectedItemColor: colorTheme.primaryColor,
          unselectedItemColor: colorTheme.thirdgreyColor,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: select,
          onTap: (value) {
            select=value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(icon: Container(
              child: SvgPicture.asset(image_picture.homeicon,color:select==0?colorTheme.primaryColor:colorTheme.thirdgreyColor,),
            ),
                label: "Home"),
            BottomNavigationBarItem(icon: Container(
              child: SvgPicture.asset(image_picture.searchicon,color:select==1?colorTheme.primaryColor:colorTheme.thirdgreyColor,),
            ),label: "Search"),
            BottomNavigationBarItem(icon: Container(
              child: SvgPicture.asset(image_picture.bookingiconblack,color:select==2?colorTheme.primaryColor:colorTheme.thirdgreyColor),
            ),label: "Booking"),
            BottomNavigationBarItem(icon: Container(
              child: SvgPicture.asset(image_picture.profileicon,color:select==3?colorTheme.primaryColor:colorTheme.thirdgreyColor,),
            ),label: "Profile")
          ],
        ),
    );
  }
}
