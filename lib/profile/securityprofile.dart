import 'package:bollu_app/login/forgotpassword_3.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class securityprofile extends StatefulWidget {
  const securityprofile({super.key});

  @override
  State<securityprofile> createState() => _securityprofileState();
}

class _securityprofileState extends State<securityprofile> {

  // onoff
  bool toggle1=false;
  bool toggle2=false;
  bool toggle3=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        backgroundColor: colorTheme.secondaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

          },
          icon: Container(
              height: w*0.1,
              width: w*0.1,
              child: SvgPicture.asset(image_picture.arrow)
          ),
        ),
        title: Text("Security",
          style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor,
              fontSize:w*0.08 ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: w*1,
          child: Padding(
            padding:  EdgeInsets.all(w*0.02),
            child: Column(
              children: [
                SizedBox(height: w*0.15,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Face ID",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.05,color: colorTheme.fourthblackColor),),
                      Stack(
                          children:[
                            InkWell(
                              onTap: () {
                                toggle1=!toggle1;
                                setState(() {

                                });
                              },
                              child: Container(
                                width: w*0.14,
                                height: w*0.08,
                                decoration: BoxDecoration(
                                    color: toggle1?colorTheme.primaryColor:colorTheme.thirdgreyColor,
                                    borderRadius: BorderRadius.circular(w*0.04)
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                                duration: Duration(milliseconds: 200),
                                left: toggle1?w*0.07:w*0.008,
                                right: toggle1?w*0.008:w*0.07,
                                child:InkWell(
                                  onTap: () {
                                    toggle1=!toggle1;
                                    setState(() {

                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                      milliseconds: 200,
                                    ),
                                    height: w*0.08,
                                    width: w*0.01,
                                    decoration: BoxDecoration(
                                      color: colorTheme.secondaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            )
                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.05,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Remember me",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.05,color: colorTheme.fourthblackColor),),
                      Stack(
                          children:[
                            InkWell(
                              onTap: () {
                                toggle2=!toggle2;
                                setState(() {

                                });
                              },
                              child: Container(
                                width: w*0.14,
                                height: w*0.08,
                                decoration: BoxDecoration(
                                    color: toggle2?colorTheme.primaryColor:colorTheme.thirdgreyColor,
                                    borderRadius: BorderRadius.circular(w*0.04)
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                                duration: Duration(milliseconds: 200),
                                left: toggle2?w*0.07:w*0.008,
                                right: toggle2?w*0.008:w*0.07,
                                child:InkWell(
                                  onTap: () {
                                    toggle2=!toggle2;
                                    setState(() {

                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                      milliseconds: 200,
                                    ),
                                    height: w*0.08,
                                    width: w*0.01,
                                    decoration: BoxDecoration(
                                      color: colorTheme.secondaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            )
                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.05,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Touch ID",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.05,color: colorTheme.fourthblackColor),),
                      Stack(
                          children:[
                            InkWell(
                              onTap: () {
                                toggle3=!toggle3;
                                setState(() {

                                });
                              },
                              child: Container(
                                width: w*0.14,
                                height: w*0.08,
                                decoration: BoxDecoration(
                                    color: toggle3?colorTheme.primaryColor:colorTheme.thirdgreyColor,
                                    borderRadius: BorderRadius.circular(w*0.04)
                                ),
                              ),
                            ),
                            AnimatedPositioned(
                                duration: Duration(milliseconds: 200),
                                left: toggle3?w*0.07:w*0.008,
                                right: toggle3?w*0.008:w*0.07,
                                child:InkWell(
                                  onTap: () {
                                    toggle3=!toggle3;
                                    setState(() {

                                    });
                                  },
                                  child: AnimatedContainer(
                                    duration: Duration(
                                      milliseconds: 200,
                                    ),
                                    height: w*0.08,
                                    width: w*0.01,
                                    decoration: BoxDecoration(
                                      color: colorTheme.secondaryColor,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                )
                            )
                          ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.05,),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Google Authenticator",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.05,color: colorTheme.fourthblackColor),),
                      SvgPicture.asset(image_picture.arrowright,width: w*0.06,),
                    ],
                  ),
                ),
                SizedBox(height: w*0.2,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot3(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    height: w*0.14,
                    width: w*0.8,
                    decoration: BoxDecoration(
                      color: colorTheme.lightgrew,
                      borderRadius: BorderRadius.circular(w*0.2),
                    ),
                    child: Center(child: Text("Change Password",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),)),
                  ),
                ),
                SizedBox(height:w*0.62,),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
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
                    child: Center(child: Text("Update",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
