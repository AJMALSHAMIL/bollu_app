import 'package:bollu_app/home/payment1.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../main/main.dart';

class reservation extends StatefulWidget {
  const reservation({super.key});

  @override
  State<reservation> createState() => _reservationState();
}

class _reservationState extends State<reservation> {

  // list
  List a=[
    "Mr.",
    "Mrs.",
    "Ms.",
  ];

  TextEditingController fullnamecontroller=TextEditingController();
  TextEditingController nicknamecontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();

  final phoneValidation=RegExp(r"[0-9]{10}$");
  final emailValidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
  final formKey=GlobalKey<FormState>();

 int Selectindex=0;

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

          },icon:  Container(
            height: w*0.1,
            width: w*0.1,
            child: SvgPicture.asset(image_picture.arrow)
        ),
        ),
        title: Text("Name of Reservation",style: TextStyle(fontSize: w*0.065,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            width: w*1,
            child: Padding(
              padding:  EdgeInsets.all(w*0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: w*1,
                    height: w*0.15,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                               Selectindex=index;
                              setState(() {

                              });
                            },
                            child: Container(
                              width: w*0.25,
                              // height: w*0.1,
                              margin: EdgeInsets.all(w*0.03),
                              decoration:BoxDecoration(
                                color:Selectindex==index? colorTheme.primaryColor:colorTheme.secondaryColor,
                                borderRadius: BorderRadius.circular(w*0.04),
                                border: Border.all(color: colorTheme.primaryColor)
                              ),
                              child: Center(
                                  child: Text(a[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.06,color:Selectindex==index? colorTheme.secondaryColor:colorTheme.primaryColor),)
                              ),
                            ),
                          );
                        },),
                  ),
                  SizedBox(height: w*0.04,),
                  TextFormField(
                    controller: fullnamecontroller,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: colorTheme.sixthtextfieldColor,
                        border: OutlineInputBorder(
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
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                      )
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: nicknamecontroller,
                      keyboardType: TextInputType.name,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: colorTheme.sixthtextfieldColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                        ),
                        // hintText:"     Full Name",
                        // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                        labelText: "     Nick Name",
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                      )
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: datecontroller,
                      keyboardType: TextInputType.datetime,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: colorTheme.sixthtextfieldColor,
                        suffixIcon: Padding(
                          padding:  EdgeInsets.all(w*0.03),
                          child: Container(
                            child: SvgPicture.asset(image_picture.calender,color: colorTheme.thirdgreyColor,),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                        ),
                        // hintText:"     Full Name",
                        // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                        labelText: "     Date of Birth",
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                      )
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: emailcontroller,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if(!emailValidation.hasMatch(value!)){
                          return "enter valid email";
                        }else{
                          return null;
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.done,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: colorTheme.sixthtextfieldColor,
                        suffixIcon: Padding(
                          padding:  EdgeInsets.all(w*0.03),
                          child: Container(
                            child: SvgPicture.asset(image_picture.email,color: colorTheme.thirdgreyColor,),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.03),
                          borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                        ),
                        // hintText:"     Full Name",
                        // hintStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                        labelText: "     Email",
                        labelStyle: TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),
                      )
                  ),
                  SizedBox(height: w*0.03,),
                  IntlPhoneField(
                    controller: phonecontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(!phoneValidation.hasMatch(value as String)){
                        return "enter valid phone number";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      fillColor: colorTheme.sixthtextfieldColor,
                      filled: true,
                      labelText: "PhoneNumber",
                      labelStyle: TextStyle(color: colorTheme.fourthblackColor),
                      counterText: "",
                      border:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                      ),
                      focusedBorder:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width: w*0.007),
                      ),
                    ),
                  ),
                  SizedBox(height: w*0.4,),
                  InkWell(
                    onTap: () {
                      if(
                      fullnamecontroller.text!=""&&
                      nicknamecontroller.text!=""&&
                      datecontroller.text!=""&&
                      emailcontroller.text!=""&&
                      phonecontroller.text!=""&&
                      formKey.currentState!.validate()
                      ){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => payment1(),));
                      }else{
                        fullnamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your full name"))):
                        nicknamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your nick name"))):
                        datecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your date of birth"))):
                        emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your email"))):
                        phonecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your phone number"))):
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter valid details")));
                      }
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
      ),
    );
  }
}
