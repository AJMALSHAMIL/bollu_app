import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'fill_profie_page.dart';
import '../main/main.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {

  // controller
  TextEditingController emailcontroller=TextEditingController();
  TextEditingController passwordcontroller=TextEditingController();
  // vallidation
  final emailvalidation=RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+$");
  final passwordvalidation=RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$");
  final formKey=GlobalKey<FormState>();

  //checkbox
  bool checkbox=false;

  // password
  bool visible=true;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
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
              padding: EdgeInsets.all(w*0.03),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: w*0.07,),
                  Text("Create your Account",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.15),),
                  SizedBox(height: w*0.07,),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: emailcontroller,
                    validator:(value) {
                      if(!emailvalidation.hasMatch(value!)){
                        return "enter valid email";
                      }else{
                        return null;
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      fillColor: colorTheme.sixthtextfieldColor,
                      filled: true,
                      labelText: "Email",
                      labelStyle: TextStyle(color: colorTheme.thirdgreyColor),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor,),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.primaryColor,width:w*0.007),
                      ),
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: Container(
                          child: SvgPicture.asset("assets/icons/Message.svg",color: colorTheme.thirdgreyColor,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: w*0.03,),
                  TextFormField(
                    controller: passwordcontroller,
                    validator: (value) {
                      if(!passwordvalidation.hasMatch(value!)){
                        return "password length must be 8 charecters,\natleast 1 uppercase,special charecters and numerical";
                      }else{
                        return null;
                      }
                    },
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    obscureText: visible,
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: colorTheme.sixthtextfieldColor,
                      labelText: "Password",
                      labelStyle: TextStyle(color: colorTheme.thirdgreyColor),
                      prefixIcon: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              visible=!visible;
                            });
                          },
                            child: Icon(visible==false?Icons.visibility:Icons.visibility_off,color: colorTheme.thirdgreyColor)),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(w*0.03),
                        borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: colorTheme.primaryColor,width: w*0.007),
                        borderRadius: BorderRadius.circular(w*0.03),
                      ),
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
                          value: checkbox,
                          onChanged: (value) {
                            setState(() {
                              checkbox=value!;
                            });
                          },),
                      Text("Remember me",style:TextStyle(fontWeight: FontWeight.w500),),
                    ],
                  ),
                  SizedBox(height: w*0.04,),
                  InkWell(
                    onTap: () {
                      if(emailvalidation!=""&&
                      passwordvalidation!=""&&
                      formKey.currentState!.validate()
                      ) {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => fillProfile(),));
                      }else{
                        emailcontroller.text==""?ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("please enter your email"))):
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
                      child: Center(child: Text("Sign up",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                    ),
                  ),
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

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
