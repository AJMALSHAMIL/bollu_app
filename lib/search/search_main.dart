import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../home/home3.dart';
import '../home/hotelbooking.dart';
import '../main/main.dart';
import '../profile/notificationprofile.dart';

class searchmain extends StatefulWidget {
  const searchmain({super.key});

  @override
  State<searchmain> createState() => _searchmainState();
}

class _searchmainState extends State<searchmain> {

  // list&grid
  bool list=true;
  bool grid=false;

  List listview3=[
    image_picture.list1,
    image_picture.list2,
    image_picture.list3,
    image_picture.list4,
    image_picture.list5,
    image_picture.list6,
  ];

  List listview4=[
    "Intercontinental Hotel",
    "Nevada Hotel",
    "Oriental Hotel",
    "Federal Palace Hotel",
    "Presidential Hotel",
    "Radisson Blu Hotel"
  ];

  List price=[
    "\$205",
    "\$107",
    "\$190",
    "\$200",
    "\$160",
    "\$180"
  ];

  List saving1=[];
  List saving2=[];


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
        title: Text("Bolu",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.09,color: colorTheme.fourthblackColor),),
        actions: [
          Padding(
            padding:  EdgeInsets.all(w*0.03),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => notificationprofile(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    width: w*0.1,
                    height: w*0.1,
                    child: SvgPicture.asset(image_picture.notificationicon),
                  ),
                ),
                SizedBox(width: w*0.04,),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home3(),));
                    setState(() {

                    });
                  },
                  child: Container(
                    width: w*0.1,
                    height: w*0.1,
                    child: SvgPicture.asset(image_picture.Bookmarkblack),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        width: w*1,
        child: Padding(
          padding:  EdgeInsets.all(w*0.03),
          child: Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => search1(),));
                  setState(() {

                  });
                },
                child: Container(
                  width: w*1,
                  height: w*0.16,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(w*0.05),
                      color: colorTheme.sixthtextfieldColor,
                      border: Border.all(color: colorTheme.fourthblackColor)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: w*0.03,),
                      SvgPicture.asset(image_picture.searchicon,width: w*0.08,),
                      SizedBox(width: w*0.04,),
                      Text("Search",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.048,color:colorTheme.thirdgreyColor),),
                      SizedBox(width: w*0.55,),
                      SvgPicture.asset(image_picture.searchsufix),
                    ],
                  ),
                ),
              ),
              SizedBox(height:w*0.03),
              Container(
                width: w*1,
                height: w*1.34,
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.all(w*0.02),
                      child: Row(
                        children: [
                          Text("Recommended (484,579)",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05),),
                          SizedBox(width: w*0.14,),
                          InkWell(
                            onTap: () {
                              list=true;
                              grid=false;
                              setState(() {

                              });
                            },
                            child: Container(
                              width: w*0.07,
                              height: w*0.07,
                              child: SvgPicture.asset(image_picture.bookingiconblack,color: list?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                            ),
                          ),
                          SizedBox(width: w*0.04,),
                          InkWell(
                            onTap: () {
                              list=false;
                              grid=true;
                              setState(() {

                              });
                            },
                            child: Container(
                              width: w*0.07,
                              height: w*0.07,
                              child: SvgPicture.asset(image_picture.home2menu,color:grid?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                            ),
                          ),
                        ],
                      ),
                    ),
                    list?Expanded(
                      child: Container(
                        width: w*1,
                        color: colorTheme.lightgrew,
                        child: Padding(
                          padding: EdgeInsets.all(w*.03),
                          child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            //scrollDirection: Axis.vertical,
                            itemCount: listview3.length,
                            itemBuilder: (BuildContext context, int index) {
                              return InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => hotelbooking(),));
                                  setState(() {

                                  });
                                },
                                child: Container(
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
                                      Image(image: AssetImage(listview3[index]),fit: BoxFit.fill,),
                                      SizedBox(width: w*0.02,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(listview4[index],style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
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
                                      SizedBox(width: w*0.02,),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(price[index],style:TextStyle(fontWeight: FontWeight.w700,color: colorTheme.primaryColor),),
                                          Text("/night",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.04,color: colorTheme.fourthblackColor)),
                                          InkWell(
                                              onTap: () {
                                                if(saving1.contains(index)){
                                                  saving1.remove(index);
                                                }else{
                                                  saving1.add(index);
                                                }
                                                setState(() {

                                                });
                                              },
                                              child: SvgPicture.asset(image_picture.savingblack,color: saving1.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor,)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ): Expanded(
                      child: Container(
                        width: w*1,
                        height: h*1,
                        color: colorTheme.lightgrew,
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: listview3.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: w*0.005,
                              crossAxisSpacing: w*0.005,
                              childAspectRatio: 0.65
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => hotelbooking(),));
                                setState(() {

                                });
                              },
                              child: Padding(
                                padding: EdgeInsets.all(w*0.02),
                                child: Container(
                                  width: w*0.4,
                                  height: w*0.7,
                                  decoration: BoxDecoration(
                                      color: colorTheme.secondaryColor,
                                      borderRadius: BorderRadius.circular(w*0.06)
                                  ),
                                  child: Padding(
                                    padding:  EdgeInsets.all(w*0.03),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Image(image: AssetImage(listview3[index]),fit: BoxFit.fill,),
                                        Text(listview4[index],style: TextStyle(fontSize: w*0.05,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(image_picture.star),
                                            Text("5.0",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w600,color: colorTheme.primaryColor),),
                                            Text(" Lagos, Nigeria",style: TextStyle(fontSize: w*0.035,fontWeight: FontWeight.w600,color: colorTheme.fourthblackColor),),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Text(price[index],style:TextStyle(fontWeight: FontWeight.w700,color: colorTheme.primaryColor)),
                                            Text("/night",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.04,color: colorTheme.fourthblackColor)),
                                            InkWell(
                                                onTap: () {
                                                  if(saving2.contains(index)){
                                                    saving2.remove(index);
                                                  }else{
                                                    saving2.add(index);
                                                  }
                                                  setState(() {

                                                  });
                                                },
                                                child: SvgPicture.asset(image_picture.savingblack,color: saving2.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor,))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),

                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
