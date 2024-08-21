import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/login/forgotpassword_2.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/main.dart';

class ForGot1 extends StatefulWidget {
  const ForGot1({super.key});

  @override
  State<ForGot1> createState() => _ForGot1State();
}

class _ForGot1State extends State<ForGot1> {

  // container
  bool border1=false;
  bool border2=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colorTheme.secondaryColor,
      appBar: AppBar(
        backgroundColor: colorTheme.secondaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
            
          }, 
          icon: Container(
            width: w*0.1,
            height: w*0.1,
            child: SvgPicture.asset(image_picture.arrow),
          ),
        ),
        title: Text("Forgot password",style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor,fontSize: w*0.07),),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: h*1,
          width: w*1,
          child: Padding(
            padding:  EdgeInsets.all(w*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width:w*0.7,
                  height:w*0.7,
                  child: Image.asset(image_picture.forgot1),
                ),
                SizedBox(height: w*0.04,),
                Text("Select which contact details should we use to reset your password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04),),
                SizedBox(height: w*0.04,),
                InkWell(
                  onTap: () {
                    setState(() {
                      border1=true;
                      border2=false;
                    });
                  },
                  child: Container(
                    height: w*0.27,
                    width: w*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      border:border1==true?Border.all(width:w*0.005,color: colorTheme.primaryColor):Border.all(width:w*0.004,color: colorTheme.thirdgreyColor),
                    ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         SizedBox(width: w*0.04,),
                         CircleAvatar(
                           radius: w*0.1,
                            backgroundColor: colorTheme.lightgrew,
                            child: SvgPicture.asset(image_picture.forgotmessage),
                          ),
                         SizedBox(width: w*0.05,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text("via SMS:",style: TextStyle(color:colorTheme.thirdgreyColor),),
                             Text("+234111******99",style:TextStyle(color: colorTheme.fourthblackColor),)
                           ],
                         ),
                       ],
                     )
                  ),
                ),
                SizedBox(height: w*0.05,),
                InkWell(
                  onTap: () {
                    setState(() {
                      border1=false;
                      border2=true;
                    });
                  },
                  child: Container(
                    height: w*0.27,
                    width: w*0.9,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      border:border2==true? Border.all(width:w*0.005,color: colorTheme.primaryColor):Border.all(width:w*0.004,color: colorTheme.thirdgreyColor),
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(width: w*0.04,),
                        CircleAvatar(
                          radius: w*0.1,
                          backgroundColor: colorTheme.lightgrew,
                          child: SvgPicture.asset(image_picture.forgotmail),
                        ),
                        SizedBox(width: w*0.05,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("via Email:",style: TextStyle(color:colorTheme.thirdgreyColor),),
                            Text(" kez***9@your domain.com",style:TextStyle(color: colorTheme.fourthblackColor),)
                          ],
                        ),
                      ],
                    )
                  ),
                ),
                SizedBox(height: w*0.1,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Forgot2(),));
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
                    child: Center(child: Text("Continue",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
