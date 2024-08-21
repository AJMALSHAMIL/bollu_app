import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../main/main.dart';

class editprofile extends StatefulWidget {
  const editprofile({super.key});

  @override
  State<editprofile> createState() => _editprofileState();
}

class _editprofileState extends State<editprofile> {

  // dropdown
  // drop down button
  String?dropdownvalue;
  var genter= [
    "Male",
    "Female",
    "Transgenter"
  ];

  TextEditingController fullnamecontroller=TextEditingController();
  TextEditingController nicknamecontroller=TextEditingController();
  TextEditingController datecontroller=TextEditingController();
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController phonecontroller=TextEditingController();
  // TextEditingController gentercontroller=TextEditingController();

  final phoneValidation=RegExp(r"[0-9]{10}$");
  final emailValidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
  final formKey=GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar:  AppBar(
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
        title: Text("Edit Profile",
          style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor,
              fontSize:w*0.08 ),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            width: w*1,
            // height: h*1,
            child: Padding(
              padding:  EdgeInsets.all(w*0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: w*0.07,),
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
                        labelText: "     Nickname",
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
                    validator: (p0) {
                      if(!phoneValidation.hasMatch(p0! as String)){
                        return "enter valid number";
                      }else{
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: colorTheme.sixthtextfieldColor,
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
                  SizedBox(height: w*0.03,),
                  Container(
                    height: w*0.16,
                    decoration:BoxDecoration(
                      color: colorTheme.sixthtextfieldColor,
                      borderRadius: BorderRadius.circular(w*0.03),
                      border: Border.all(width: w*0.0028,color: colorTheme.thirdgreyColor),
                    ),
                    child: DropdownButton(
                      icon: Container(
                        margin: EdgeInsets.only(right: w*0.02),
                        width: w*0.1,
                        height: w*0.1,
                        child: SvgPicture.asset(image_picture.dropdown,color: colorTheme.thirdgreyColor,),
                      ),
                      underline:Container(
                        width: w*0,
                        height: w*0,
                      ),
                      focusColor: colorTheme.primaryColor,
                      hint: Text("       Gender",style:  TextStyle(color: colorTheme.fourthblackColor,fontWeight: FontWeight.w500),),
                      isExpanded: true,
                      value: dropdownvalue,
                      items: genter.map((String?genter) {
                        return DropdownMenuItem(
                            value: genter,
                            child: Text(genter!));
                      }).toList(),
                      onChanged:(newGender) {
                        setState(() {
                          dropdownvalue=newGender;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: w*0.3,),
                  InkWell(
                    onTap: () {
                      if(fullnamecontroller.text!=""&&
                          nicknamecontroller.text!=""&&
                          datecontroller.text!=""&&
                          emailValidation!=""&&
                          phoneValidation!=""&&
                          dropdownvalue!=null&&
                          formKey.currentState!.validate()){
                     Navigator.pop(context);
                      }else{
                        fullnamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your full name"))):
                        nicknamecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your nick name"))):
                        datecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your date of birth"))):
                        emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your email"))):
                        phonecontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your phone number"))):
                        dropdownvalue==null?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please select your genter"))):
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
                      child: Center(child: Text("Update",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
