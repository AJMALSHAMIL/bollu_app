import 'package:bollu_app/home/home_page_1.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/login/login_accound_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/main.dart';

class Forgot3 extends StatefulWidget {
  const Forgot3({super.key});

  @override
  State<Forgot3> createState() => _Forgot3State();
}

class _Forgot3State extends State<Forgot3> {
  // checkbox
  bool checkbox3=false;

  // password
  bool password1=true;
  bool password2=true;

  TextEditingController password1controller=TextEditingController();
  TextEditingController password2controller=TextEditingController();

  final passwordValidator=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
  final formKey=GlobalKey<FormState>();


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
        title: Text("Create New Password",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.07,color: colorTheme.fourthblackColor),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            width: w*1,
            // height: h*1,
            child: Padding(
              padding:  EdgeInsets.all(w*0.06),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: w*0.9,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: w*0.03,),
                      Text("Create Your New Password",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04,color: colorTheme.thirdgreyColor),),
                    ],
                  ),
                  SizedBox(height: w*0.05,),
                  TextFormField(
                    controller: password1controller,
                    validator: (value) {
                      if(!passwordValidator.hasMatch(value!)){
                        return "password length must be 8 charecters,\natleast 1 uppercase,special charecters and numerical";
                      }else{
                        return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: password1,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: colorTheme.sixthtextfieldColor,
                      labelText: "Password",
                      labelStyle: TextStyle(color: colorTheme.thirdgreyColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                      ),
                      prefixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            password1=!password1;
                          });
                        },
                          child:password1==false?Icon(Icons.visibility,color: colorTheme.thirdgreyColor,):Icon(Icons.visibility_off,color: colorTheme.thirdgreyColor,)),
                    ),
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: password2controller,
                    validator: (value) {
                      if(password1controller.text!=password2controller.text){
                        return "please enter confirmed password";
                      }else{
                        return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    obscureText: password2,
                    decoration: InputDecoration(
                      fillColor: colorTheme.sixthtextfieldColor,
                      filled: true,
                      labelText: "New Password",
                      labelStyle: TextStyle(color: colorTheme.thirdgreyColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                      ),
                      prefixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            password2=!password2;
                          });
                        },
                          child: password2==false?Icon(Icons.visibility,color: colorTheme.thirdgreyColor,):Icon(Icons.visibility_off,color: colorTheme.thirdgreyColor,)),
                    ),
                  ),
                  SizedBox(height: w*0.03,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Checkbox(
                        shape: RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(w*0.01),
                        ),
                        side: BorderSide(
                          color: colorTheme.primaryColor,
                          width: w*0.006,
                        ),
                        activeColor: colorTheme.primaryColor,
                        value: checkbox3,
                        onChanged: (value) {
                          setState(() {
                            checkbox3=value!;
                          });
                        },),
                      Text("Remember me",style:TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: w*0.02,),
                  InkWell(
                    onTap: () {
                      if(password1controller.text!=""&&
                      password2controller.text!=""&&
                      formKey.currentState!.validate()) {
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                          builder: (context) => home_page1(),), (
                            route) => false);
                      }else{
                        password1controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your password"))):
                        password2controller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your New password"))):
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
