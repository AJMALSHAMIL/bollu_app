import 'package:bollu_app/home/payment2.dart';
import 'package:bollu_app/home/ticket.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

import '../main/main.dart';

class payment3 extends StatefulWidget {

  final String cardnumber2;
  const payment3({super.key,
  required this.cardnumber2,
  });

  @override
  State<payment3> createState() => _payment3State();
}

class _payment3State extends State<payment3> {
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
        title: Text("Payment",style: TextStyle(fontSize: w*0.065,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
      ),
      body: Container(
        width: w*1,
        child: Column(
          children: [
            Container(
              width: w*1,
              height: w*1.5,
              color: colorTheme.lightgrew,
              child: Padding(
                padding:  EdgeInsets.all(w*0.04),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                            width: w*1,
                            height: w*0.25,
                            margin: EdgeInsets.all(w*0.015),
                            decoration: BoxDecoration(
                              color:colorTheme.secondaryColor,
                              borderRadius: BorderRadius.circular(w*0.03),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image(image: AssetImage(image_picture.list1,),fit: BoxFit.fill,),
                                SizedBox(width: w*0.03,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Intercontinental Hotel",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
                                    Text("Lagos, Nigeria",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.04,color: colorTheme.fourthblackColor),),
                                    Row(
                                      children: [
                                        SvgPicture.asset(image_picture.star),
                                        Text("5.0",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),),
                                        SizedBox(width: w*0.03,),
                                        Text("(4,345 reviews)",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.fourthblackColor),)
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(width: w*0.05,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("\$205",style:TextStyle(fontWeight: FontWeight.w700,color: colorTheme.primaryColor),),
                                    Text("/night",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.04,color: colorTheme.fourthblackColor)),
                                    SvgPicture.asset(image_picture.savingblack),
                                  ],
                                )
                              ],
                            ),
                          ),
                    Container(
                            width: w*1,
                            height: w*0.4,
                            decoration: BoxDecoration(
                              color:colorTheme.secondaryColor,
                              borderRadius: BorderRadius.circular(w*0.03),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(w*0.04),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Check in",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("December 16, 2024",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Check out",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("December 16, 2024",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Guest",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("3",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                    Container(
                            width: w*1,
                            height: w*0.4,
                            decoration: BoxDecoration(
                              color:colorTheme.secondaryColor,
                              borderRadius: BorderRadius.circular(w*0.03),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.all(w*0.04),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("5 Nights ",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("\$760.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Taxes & Fees (10%)",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("\$760.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                  Divider(
                                    thickness: w*0.002,
                                    color: colorTheme.thirdgreyColor,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Total",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor,fontSize: w*0.05),),
                                      Text("\$760.00",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05))
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ), 
                    Container(
                      width: w*1,
                      height: w*0.17,
                      decoration: BoxDecoration(
                          color: colorTheme.secondaryColor,
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image(image: AssetImage(image_picture.banklogo)),
                            Text(widget.cardnumber2,style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045),),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => payment2(cardnumber: '',),));
                                setState(() {

                                });
                              },
                                child: Text("Change",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor,fontSize: w*0.05),))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: w*0.07,),
            InkWell(
              onTap: () {
                showDialog(
                  barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Container(
                          width: w*1,
                          height: w*1.2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: w*1,
                                height: w*0.45,
                                child: Lottie.asset(image_picture.lottie_verified),
                              ),
                              Text("Payment Successfull!",style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.primaryColor,fontSize: w*0.06),),
                              Column(
                                children: [
                                  Text("Successfully made payment and ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                  Text(" hotel booking",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                ],
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ticket(),));
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
                                  child: Center(child: Text("View Ticket",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                                ),
                              ),
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
                                    color: colorTheme.lightgrew,
                                    borderRadius: BorderRadius.circular(w*0.2),
                                  ),
                                  child: Center(child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),)),
                                ),
                              ),
                            ],

                          ),
                        ),
                      );
                    },
                );
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
    );
  }
}
