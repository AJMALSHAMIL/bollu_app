import 'package:bollu_app/home/payment2.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flipcard/gesture_flip_card.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class newcard extends StatefulWidget {
  const newcard({super.key});

  @override
  State<newcard> createState() => _newcardState();
}

class _newcardState extends State<newcard> {

  TextEditingController cardnumberCondroller=TextEditingController();
  TextEditingController dateCondroller=TextEditingController();
  TextEditingController cvvCondroller=TextEditingController();

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
        title: Text("New Card",style: TextStyle(fontSize: w*0.065,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: w*1,
          child: Padding(
            padding:  EdgeInsets.all(w*0.05),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureFlipCard(
                  animationDuration: Duration(milliseconds: 200),
                    axis: FlipAxis.vertical,
                    frontWidget: Container(
                      width: w*0.8,
                      height: w*0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(image_picture.atm),fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Padding(
                        padding:  EdgeInsets.all(w*0.04),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Balance",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.secondaryColor),),
                                    Text("\$1299.15",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.07,color: colorTheme.secondaryColor),),
                                  ],
                                ),
                               Container(
                                 width: w*0.15,
                                 height: w*0.15,
                                 child: SvgPicture.asset(image_picture.atmlogo),
                                 ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(width: w*0.6,),
                                Text(dateCondroller.text,style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.06,color: colorTheme.secondaryColor),),
                              ],
                            ),
                            SizedBox(height:w*0.03,),
                            Text(cardnumberCondroller.text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06,color: colorTheme.secondaryColor),)
                          ],
                        ),
                      ),
                    ),
                    backWidget: Container(
                      width: w*0.8,
                      height: w*0.5,
                      decoration: BoxDecoration(
                        color: colorTheme.primaryColor,
                        borderRadius: BorderRadius.circular(w*0.03)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: w*1,
                            height: w*0.08,
                            color: colorTheme.fourthblackColor,
                          ),
                          Padding(
                            padding:  EdgeInsets.all(w*0.03),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: w*0.5,
                                  height: w*0.07,
                                  color: colorTheme.secondaryColor,
                                ),
                                Container(
                                  width: w*0.2,
                                  height: w*0.07,
                                  color: colorTheme.secondaryColor,
                                  child: Center(
                                      child: Text(cvvCondroller.text,style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05),)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                ),
                SizedBox(height: w*0.2,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      color: colorTheme.sixthtextfieldColor
                  ),
                  child: TextFormField(
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                        ),
                        // hintText:"     Full Name",
                        // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                        labelText: "     Full Name",
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w600,),
                      )
                  ),
                ),
                SizedBox(height: w*0.1,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.03),
                      color: colorTheme.sixthtextfieldColor
                  ),
                  child: TextFormField(
                    onChanged: (value) {
                      setState(() {
                        // cardnumberCondroller.text=value;

                      });
                    },
                    controller: cardnumberCondroller,
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      maxLength: 16,
                      decoration: InputDecoration(
                        counterText: "",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                        ),
                        // hintText:"     Full Name",
                        // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                        labelText: "     card number",
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w600),
                      )
                  ),
                ),
                SizedBox(height: w*0.1,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: w*0.4,
                      height: w*0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorTheme.sixthtextfieldColor
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                          controller: dateCondroller,
                          keyboardType: TextInputType.datetime,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w*0.03),
                              borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w*0.03),
                              borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                            ),
                            // hintText:"     Full Name",
                            // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                            labelText: "   date",
                            labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w600),
                          )
                      ),
                    ),
                    SizedBox(width: w*0.05,),
                    Container(
                      width: w*0.4,
                      height: w*0.15,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorTheme.sixthtextfieldColor
                      ),
                      child: TextFormField(
                        onChanged: (value) {
                          setState(() {

                          });
                        },
                          controller: cvvCondroller,
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            counterText: "",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w*0.03),
                              borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(w*0.03),
                              borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                            ),
                            // hintText:"     Full Name",
                            // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                            labelText: "  cvv",
                            labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w600),
                          )
                      ),
                    ),
                  ],
                ),
                SizedBox(height: w*0.2,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => payment2(cardnumber: cardnumberCondroller.text,),));
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
                    child: Center(child: Text("Add New Card",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
