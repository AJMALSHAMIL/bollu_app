import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class ticket extends StatefulWidget {
  const ticket({super.key});

  @override
  State<ticket> createState() => _ticketState();
}

class _ticketState extends State<ticket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.secondaryColor,
        leading:  IconButton(
          onPressed: () {
            Navigator.pop(context);

          },icon:  Container(
            height: w*0.1,
            width: w*0.1,
            child: SvgPicture.asset(image_picture.arrow)
        ),
        ),
        title: Text("Ticket",style: TextStyle(fontSize: w*0.065,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: w*1,
          child: Padding(
            padding:  EdgeInsets.all(w*0.02),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: w*1,
                      height: w*1.4,
                      child: Image(image: AssetImage(image_picture.ticket),fit: BoxFit.fill,),
                    ),
                    Positioned(
                      top: w*0.03,
                      right: w*0.23,
                      child: Container(
                        width: w*0.5,
                        height: w*0.65,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Intercontinental Hotel",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05),),
                            Image(image: AssetImage(image_picture.Qrcode),),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: w*0.02,
                      right: w*0.05,
                      child: Container(
                        width: w*0.83,
                        height: w*0.6,
                        child: Padding(
                          padding:  EdgeInsets.all(w*0.03),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Name",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("Kezia Williams",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                  SizedBox(height: w*0.07,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Check in",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("Dec 16,2024",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                  SizedBox(height: w*0.07,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Hotel",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("Intercontinental Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Phone Number",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("+234 702 2347 642",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                  SizedBox(height: w*0.07,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Check out",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("Dec 16,2024",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                  SizedBox(height: w*0.07,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Guest",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                                      Text("3",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.04,),),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: w*0.15,),
                InkWell(
                  onTap: () {
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
                    child: Center(child: Text("Download Ticket",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
