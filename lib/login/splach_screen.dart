import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/login/page_1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main/main.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {

  void initState(){
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>page1(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w*1,
        height: h*1,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image_picture.splash),fit: BoxFit.fill),
        ),
        child:Padding(
          padding: EdgeInsets.only(left: w*0.13,right: w*0.01),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome to",style: TextStyle(fontSize: w*0.12,fontWeight: FontWeight.w700,color: colorTheme.secondaryColor),),
              SizedBox(height: w*0.02,),
              Text("Bolu",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.3,color: colorTheme.primaryColor),),
               SizedBox(height: w*0.02,),
              Text("The best hotel bookings in the century to accompany your vacation",style: TextStyle(fontWeight: FontWeight.w600,fontSize:w*0.04,color: colorTheme.secondaryColor ),),
               SizedBox(height: w*0.1,),
            ],
          ),
        ),
        ),
    );
  }
}
