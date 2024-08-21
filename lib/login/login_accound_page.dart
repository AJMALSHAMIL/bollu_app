import 'package:bollu_app/login/accound_page.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/login/forgotpassword_1.dart';
import 'package:bollu_app/home/home_page_1.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class loginAccound extends StatefulWidget {
  const loginAccound({super.key});

  @override
  State<loginAccound> createState() => _loginAccoundState();
}

class _loginAccoundState extends State<loginAccound> {

  // checkbox
  bool checkbox2=false;

  // password
  bool visible2=true;

  TextEditingController emailcontroller= TextEditingController();
  TextEditingController passwordcontroller= TextEditingController();

  final emailValidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
  final passwordValidator=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
  final formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:colorTheme.secondaryColor,
      appBar: AppBar(
        backgroundColor: colorTheme.secondaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

          }, icon: Container(
          height: w*0.1,
          width: w*0.1,
          child: SvgPicture.asset("assets/icons/Arrow - Left.svg"),
        ),
        ),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Container(
            // height: h*1,
            width: w*1,
            child: Padding(
              padding: EdgeInsets.all(w*0.05),
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: w*0.07,),
                  Text("Login to your Account",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.13),),
                  SizedBox(height: w*0.07,),
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
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.04),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width: w*0.007)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor)
                      ),
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: Container(
                          child: SvgPicture.asset("assets/icons/Message.svg",color: colorTheme.thirdgreyColor),
                        ),
                      ),
                      hintText: " Email",
                    ),
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: passwordcontroller,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) {
                      if(!passwordValidator.hasMatch(value!)){
                        return "password length must be 8 charecters,\natleast 1 uppercase,special charecters and numerical";
                      }else{
                        return null;
                      }
                    },
                    obscureText:visible2?true:false,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      fillColor: colorTheme.sixthtextfieldColor,
                      filled: true,
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                visible2=!visible2;
                              });
                            },
                            child: Icon(visible2==false?Icons.visibility:Icons.visibility_off,color: colorTheme.thirdgreyColor)),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(w*0.04),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width: w*0.007)
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor)
                      ),
                      hintText: "Password",
                    ),
                  ),
                  SizedBox(height: w*0.04,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                        value: checkbox2,
                        onChanged: (value) {
                          setState(() {
                            checkbox2=value!;
                          });
                        },),
                      Text("Remember me",style:TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: w*0.04,),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => home_page1(),));
                      setState(() {

                      });
                    },
                    child: InkWell(
                      onTap: () {
                        if(emailValidation!=""&&
                        passwordValidator!=""&&
                        formKey.currentState!.validate()){
                        Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => home_page1(),), (route) => false);
                        }else{
                          emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please enter your email"))):
                              passwordcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your password"))):
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
                        child: Center(child: Text("Sign in",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                      ),
                    ),
                  ),
                  SizedBox(height: w*0.04,),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ForGot1(),));
                      });
                    },
                      child: Text("Forgot the password?",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),)),
                  SizedBox(height: w*0.04,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          indent: w*0.05,
                          endIndent: w*0.02,
                          height: w*0.02,
                          color:colorTheme.thirdgreyColor,
                        ),
                      ),
                      Text("or continue with",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.thirdgreyColor),),
                      Expanded(
                        child: Divider(
                          indent: w*0.02,
                          endIndent: w*0.05,
                          height: w*0.02,
                          color:colorTheme.thirdgreyColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: w*0.07,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: w*0.24,
                        height: w*0.16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.03),
                            color: colorTheme.secondaryColor,
                            border: Border.all(color: colorTheme.thirdgreyColor)
                        ),
                        child: Image(image: AssetImage(image_picture.facebook)),
                      ),
                      SizedBox(height: w*0.04,),
                      Container(
                        width: w*0.24,
                        height: w*0.16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.03),
                            color: colorTheme.secondaryColor,
                            border: Border.all(color: colorTheme.thirdgreyColor)
                        ),
                        child: Image(image: AssetImage(image_picture.Google)),
                      ),
                      Container(
                        width: w*0.24,
                        height: w*0.16,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(w*0.03),
                            color: colorTheme.secondaryColor,
                            border: Border.all(color: colorTheme.thirdgreyColor)
                        ),
                        child: Image(image: AssetImage(image_picture.apple)),
                      ),
                    ],
                  ),
                  SizedBox(height: w*0.07,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",style: TextStyle(fontWeight:FontWeight.w700,color: colorTheme.thirdgreyColor ),),
                      InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => account(),));
                            setState(() {

                            });
                          },
                          child: Text("  Sign up",style: TextStyle(fontWeight:FontWeight.w700,color: colorTheme.primaryColor ),))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

