import 'package:bollu_app/login/accound_page.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'login_accound_page.dart';
import '../main/main.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.secondaryColor,
      ),
      body: Container(
          height: h*1,
          width: w*1,
        child: Padding(
          padding: EdgeInsets.all(w*0.03),
          child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: w*0.1,),
                 Text("let's you in",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.13),),
              SizedBox(height: w*0.2,),
              InkWell(
                onTap: () {

                },
                child: Container(
                  height: w*0.14,
                  width: w*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.03),
                    border: Border.all(color: colorTheme.thirdgreyColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width:w*0.03,),
                      Image(image: AssetImage(image_picture.facebook)),
                      SizedBox(width: w*0.03,),
                      Text("Continue with Facebook",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w500,color: colorTheme.fourthblackColor),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: w*0.04,),
              InkWell(
                onTap: () {

                },
                child: Container(
                  height: w*0.14,
                  width: w*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(color: colorTheme.thirdgreyColor)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width:w*0.03,),
                      Image(image: AssetImage(image_picture.Google)),
                      SizedBox(width: w*0.03,),
                      Text("Continue with Google",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w500,color: colorTheme.fourthblackColor),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: w*0.04,),
              InkWell(
                onTap: () {

                },
                child: Container(
                  height: w*0.14,
                  width: w*0.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(color: colorTheme.thirdgreyColor)
                  ),
                  child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width:w*0.03,),
                      Image(image: AssetImage(image_picture.apple)),
                      SizedBox(width: w*0.03,),
                      Text("Continue with Apple",style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w500,color: colorTheme.fourthblackColor),)
                    ],
                  ),
                ),
              ),
              SizedBox(height: w*0.09,),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: w*0.05,
                      endIndent: w*0.02,
                      height: w*0.02,
                      color:colorTheme.thirdgreyColor,
                    ),
                  ),
                  Text("or",style: TextStyle(fontWeight: FontWeight.w500,color:colorTheme.thirdgreyColor),),
                  Expanded(
                    child: Divider(
                      height: w*0.03,
                      indent: w*0.02,
                      endIndent: w*0.06,
                      color:colorTheme.thirdgreyColor,
                    ),
                  ),
                ],
              ),
              SizedBox(height: w*0.09,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => loginAccound(),));
                  setState(() {

                  });
                },
                child: Container(
                  height: w*0.14,
                  width: w*0.8,
                  decoration: BoxDecoration(
                    color: colorTheme.primaryColor,
                      borderRadius: BorderRadius.circular(w*0.2),
                  ),
                  child: Center(child: Text("Sign in with password",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                ),
              ),
              SizedBox(height: w*0.1,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Don’t have an account?",style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.thirdgreyColor),),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => account(),));
                      setState(() {

                      });
                    },
                    child: Text("Sign up",
                      style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.primaryColor),),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
