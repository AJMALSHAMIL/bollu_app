import 'package:bollu_app/home/newcard.dart';
import 'package:bollu_app/home/payment3.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class payment2 extends StatefulWidget {

   final String cardnumber;

  const payment2({super.key,
  required this.cardnumber,
  });

  @override
  State<payment2> createState() => _payment2State();
}

class _payment2State extends State<payment2> {

  // radio

  String Bankaccount="";

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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: w*1,
          child: Column(
            children: [
              SizedBox(height: w*0.1,),
              Row(
                children: [
                  SizedBox(width: w*0.05,),
                  Text("Payment Methods",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.045),),
                  SizedBox(width: w*0.2,),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>newcard(),));
                        setState(() {

                        });
                      },
                      child: Text("Add New Card",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.045,color: colorTheme.primaryColor),)),
                ],
              ),
              SizedBox(height: w*0.05,),
              Container(
                width: w*1,
                height: w*1.2,
                color: colorTheme.lightgrew,
                child: Padding(
                  padding:  EdgeInsets.all(w*0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w*1,
                        height: w*0.17,
                        decoration: BoxDecoration(
                            color: colorTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(w*0.03)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding:  EdgeInsets.all(w*0.03),
                              child: Row(
                                children: [
                                  Image(image: AssetImage(image_picture.paypal)),
                                  SizedBox(width: w*0.03,),
                                  Text("Paypal",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045),),
                                ],
                              ),
                            ),
                            Radio(
                              fillColor:MaterialStatePropertyAll(colorTheme.primaryColor),
                              activeColor: colorTheme.primaryColor,
                              value: "paypal",
                              groupValue: Bankaccount,
                              onChanged: (value) {
                                Bankaccount=value!;
                                setState(() {

                                });
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: w*1,
                        height: w*0.17,
                        decoration: BoxDecoration(
                            color: colorTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(w*0.03)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(w*0.03),
                              child: Row(

                                children: [
                                  Image(image: AssetImage(image_picture.Google)),
                                  SizedBox(width: w*0.03,),
                                  Text("Google Pay",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045),),
                                ],
                              ),
                            ),
                            Radio(
                              fillColor:MaterialStatePropertyAll(colorTheme.primaryColor),
                              activeColor: colorTheme.primaryColor,
                              value: "googlepay",
                              groupValue: Bankaccount,
                              onChanged: (value) {
                                Bankaccount=value!;
                                setState(() {

                                });
                              },)
                          ],
                        ),
                      ),
                      Container(
                        width: w*1,
                        height: w*0.17,
                        decoration: BoxDecoration(
                            color: colorTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(w*0.03)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding:  EdgeInsets.all(w*0.03),
                              child: Row(
                                children: [
                                  Image(image: AssetImage(image_picture.apple)),
                                  SizedBox(width: w*0.03,),
                                  Text("Apple Pay",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045),),
                                ],
                              ),
                            ),

                            Radio(
                              fillColor:MaterialStatePropertyAll(colorTheme.primaryColor),
                              activeColor: colorTheme.primaryColor,
                              value: "applepay",
                              groupValue: Bankaccount,
                              onChanged: (value) {
                                Bankaccount=value!;
                                setState(() {

                                });
                              },)
                          ],
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Pay with Debit/Credit Card",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05),),
                        ],
                      ),
                      Container(
                        width: w*1,
                        height: w*0.17,
                        decoration: BoxDecoration(
                            color: colorTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(w*0.03)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            Padding(
                              padding:  EdgeInsets.all(w*0.03),
                              child: Row(
                                children: [
                                  Image(image: AssetImage(image_picture.banklogo)),
                                  SizedBox(width: w*0.02,),
                                  Text(widget.cardnumber,style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045),),
                                ],
                              ),
                            ),
                            Radio(
                              fillColor:MaterialStatePropertyAll(colorTheme.primaryColor),
                              activeColor: colorTheme.primaryColor,
                              value: "creditcard",
                              groupValue: Bankaccount,
                              onChanged: (value) {
                                Bankaccount=value!;
                                setState(() {

                                });
                              },)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: w*0.15,),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => payment3(cardnumber2: widget.cardnumber,),));
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
    );
  }
}
