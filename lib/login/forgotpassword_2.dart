import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';
import 'package:timer_count_down/timer_count_down.dart';

import 'forgotpassword_3.dart';
import '../main/main.dart';

class Forgot2 extends StatefulWidget {
  const Forgot2({super.key});

  @override
  State<Forgot2> createState() => _Forgot2State();
}

class _Forgot2State extends State<Forgot2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.secondaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

          }, icon: Container(
          width: w*0.1,
          height: w*0.1,
          child: SvgPicture.asset(image_picture.arrow),
        ),
        ),
        title: Text("Forgot password",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.07,color: colorTheme.fourthblackColor),),
      ),
      body: SingleChildScrollView(
        child: Container(
          // height: h*1,
          width: w*1,
          child: Padding(
            padding: EdgeInsets.all(w*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: w*0.7,
                    width: w*0.7,
                    child: Image(image: AssetImage(image_picture.forgotprotect))
                ),
                SizedBox(height: w*0.03,),
                Text("Code has been sent to +234111******99",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.fourthblackColor,fontSize: w*0.045),),
                SizedBox(height: w*0.1,),
                Container(
                  width: w*0.78,
                  height: w*0.18,
                  child: Pinput(
                    focusedPinTheme: PinTheme(
                      decoration: BoxDecoration(
                        color: colorTheme.sixthtextfieldColor,
                        border: Border.all(
                            color: colorTheme.thirdgreyColor,
                            width: w*0.007
                        ),
                        borderRadius: BorderRadius.circular(w*0.03),
                      ),
                    ),
                    defaultPinTheme: PinTheme(
                      decoration: BoxDecoration(
                        color: colorTheme.sixthtextfieldColor,
                        border: Border.all(
                          color: colorTheme.primaryColor,
                          width: w*0.007
                        ),
                        borderRadius: BorderRadius.circular(w*0.03),
                      )
                    ),
                  ),
                ),
                SizedBox(height: w*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Resend code in ",style: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500,fontSize: w*0.04),),
                    SizedBox(width:w*0.02,),
                    Countdown(
                      seconds: 52,
                      build: (BuildContext , double ) {
                        return Text(double.toString(),style: TextStyle(color: colorTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: w*0.05),);
                      },
                    ),
                    SizedBox(width:w*0.02,),
                    Text("s",style: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500,fontSize: w*0.04)),
                  ],
                ),
                SizedBox(height: w*0.3,),
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
                      color: colorTheme.primaryColor,
                      borderRadius: BorderRadius.circular(w*0.2),
                    ),
                    child: Center(child: Text("Verify",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
