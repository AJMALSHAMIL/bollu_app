
import 'dart:io';

import 'package:bollu_app/home/payment1.dart';
import 'package:bollu_app/login/login_page.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/profile/editprofile.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/profile/securityprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';

import '../main/main.dart';
import 'notificationprofile.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {



  // profil pic
  File? file;

  pickFile(ImageSource) async {
    final imageFile = await ImagePicker.platform.pickImage(source: ImageSource);
  file=File(imageFile!.path);
  if(mounted){
    setState(() {
       file=File(imageFile.path);
      });
    }
  }

  // on off
  bool toggle=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        backgroundColor: colorTheme.secondaryColor,
        elevation: 0,
        leading:Row(
          children: [
            SizedBox(width: w*0.04,),
            Container(
                width: w*0.1,
                height: w*0.1,
                child: SvgPicture.asset(image_picture.bolulogo)
            ),
          ],
        ),
        title: Text("Profile",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.09,color: colorTheme.fourthblackColor),),
      ),
      body:SingleChildScrollView(
        child: Container(
          width: w*1,
          child: Padding(
            padding:  EdgeInsets.all(w*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                   file!=null?CircleAvatar(
                     radius: w*0.225,
                     backgroundImage: FileImage(file!),
                   ): CircleAvatar(
                      radius: w*0.225,
                      child: Image(image: AssetImage(image_picture.profilepicture)),
                    ),
                    InkWell(
                      onTap: () {
                       showDialog(
                           context: context,
                           builder: (context) {
                             return AlertDialog(
                               content: Container(
                                 width: w*0.8,
                                 height: w*0.3,
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   children: [
                                     Text("Select item",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.08)),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                       children: [
                                         InkWell(
                                           onTap: () {
                                             Navigator.pop(context);
                                             pickFile(ImageSource.camera);
                                           },
                                           child: Container(
                                             width: w*0.27,
                                             height: w*0.09,
                                               decoration: BoxDecoration(
                                                 color: colorTheme.lightgrew,
                                                 borderRadius: BorderRadius.circular(w*0.04)
                                               ),
                                               child: Icon(Icons.camera_alt,color: colorTheme.primaryColor,)
                                           ),
                                         ),
                                         InkWell(
                                           onTap: () {
                                             Navigator.pop(context);
                                             pickFile(ImageSource.gallery);
                                           },
                                           child: Container(
                                               width: w*0.27,
                                               height: w*0.09,
                                               decoration: BoxDecoration(
                                                 color: colorTheme.lightgrew,
                                                   borderRadius: BorderRadius.circular(w*0.04)
                                               ),
                                               child: Icon(Icons.image,color: colorTheme.primaryColor,)
                                           ),
                                         ),
                                       ],
                                     )
                                   ],
                                 ),
                               ),
                             );
                           },);
                      },
                      child: SvgPicture.asset(image_picture.profilepencil,
                        width: w*0.12,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: w*0.02,),
                Center(child: Text("Kezia Ajibastin",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.07,color: colorTheme.fourthblackColor),)),
                SizedBox(height: w*0.01,),
                Center(child: Text("kezia_ajibastin@domain.com",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.04,color: colorTheme.fourthblackColor),)),
                SizedBox(height: w*0.14,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => editprofile(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        SvgPicture.asset(image_picture.profileicon,width: w*0.06,color: colorTheme.thirdgreyColor,),
                        SizedBox(width: w*0.06,),
                        Text("Edit Profile",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w*0.05,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => payment1(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        SvgPicture.asset(image_picture.payment,width: w*0.06,color: colorTheme.thirdgreyColor,),
                        SizedBox(width: w*0.06,),
                        Text("Payment",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w*0.05,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => notificationprofile(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        SvgPicture.asset(image_picture.notificationicon,width: w*0.06,color: colorTheme.thirdgreyColor,),
                        SizedBox(width: w*0.06,),
                        Text("Notification",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w*0.05,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => securityprofile(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        SvgPicture.asset(image_picture.security,width: w*0.06,color: colorTheme.thirdgreyColor,),
                        SizedBox(width: w*0.06,),
                        Text("Security",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),)
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w*0.05,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      SvgPicture.asset(image_picture.help,width: w*0.06,color: colorTheme.thirdgreyColor,),
                      SizedBox(width: w*0.06,),
                      Text("Help",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),)
                    ],
                  ),
                ),
                SizedBox(height: w*0.05,),
                Container(
                  child: Row(
                    children: [
                      SizedBox(width: w*0.05,),
                      SvgPicture.asset(image_picture.visiblity,width: w*0.06,color: colorTheme.thirdgreyColor,),
                      SizedBox(width: w*0.06,),
                      Text("Dark Theme",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.thirdgreyColor),),
                      SizedBox(width: w*0.34,),
                      Stack(
                        children:[
                          InkWell(
                              onTap: () {
                                toggle=!toggle;
                                setState(() {

                                });
                              },
                            child: Container(
                            width: w*0.14,
                            height: w*0.08,
                            decoration: BoxDecoration(
                                color: toggle?colorTheme.primaryColor:colorTheme.thirdgreyColor,
                              borderRadius: BorderRadius.circular(w*0.04)
                            ),
                        ),
                          ),
                          AnimatedPositioned(
                              duration: Duration(milliseconds: 200),
                              left: toggle?w*0.07:w*0.008,
                              right: toggle?w*0.008:w*0.07,
                              child:InkWell(
                                onTap: () {
                                  toggle=!toggle;
                                  setState(() {

                                  });
                                },
                                child: AnimatedContainer(
                                  duration: Duration(
                                    milliseconds: 200,
                                  ),
                                  height: w*0.08,
                                   width: w*0.01,
                                  decoration: BoxDecoration(
                                    color: colorTheme.secondaryColor,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              )
                          )
                        ]
                      ),
                    ],
                  ),
                ),
                SizedBox(height: w*0.05,),
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                       backgroundColor: colorTheme.secondaryColor,
                        showDragHandle: true,
                        context: context,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight:Radius.circular(w*0.1),
                              topLeft: Radius.circular(w*0.1)),
                          ),
                        builder: (context) {
                          return Container(
                            width: w*1,
                            height: w*0.6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Log Out",style: TextStyle(fontWeight: FontWeight.w700,color:colorTheme.seventhred,fontSize: w*0.055),),
                                Divider(
                                  thickness: w*0.001,
                                  color: colorTheme.thirdgreyColor,
                                  endIndent: w*0.07,
                                  indent: w*0.07,
                                ),
                                Column(
                                  children: [
                                    Text("Are you sure you want to  ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                    Text(" Log Out?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                  ],
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => login(),), (route) => false);
                                    setState(() {

                                    });
                                  },
                                  child: Container(
                                    height: w*0.12,
                                    width: w*0.5,
                                    decoration: BoxDecoration(
                                      color: colorTheme.primaryColor,
                                      borderRadius: BorderRadius.circular(w*0.2),
                                    ),
                                    child: Center(child: Text("Yes, Logout",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
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
                                    width: w*0.5,
                                    decoration: BoxDecoration(
                                      color: colorTheme.lightgrew,
                                      borderRadius: BorderRadius.circular(w*0.2),
                                    ),
                                    child: Center(child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),)),
                                  ),
                                )
                              ],
                            ),
                          );
                        },);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        SvgPicture.asset(image_picture.logout,width: w*0.06,color:colorTheme.seventhred,),
                        SizedBox(width: w*0.06,),
                        Text("Log Out",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.seventhred),)
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
