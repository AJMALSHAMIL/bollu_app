import 'package:bollu_app/home/hotelbooking.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/home/home2.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/profile/notificationprofile.dart';
import 'package:bollu_app/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home3.dart';
import '../main/main.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // listview name
  bool listview1=true;

  bool select1=true;
  bool select2=false;
  bool select3=false;
  bool select4=false;

  // list&grid
  bool list=true;
  bool grid=false;

  //list view2 list
  List listview2=[
    image_picture.list1,
    image_picture.list2,
    image_picture.list3,
    image_picture.list4,
    image_picture.list5,
    image_picture.list6,
  ];

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
  List saving3=[];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
            padding: EdgeInsets.all(w*0.03),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height:w*0.06),
                select1?Text("Hello, Kezia",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.13,color: colorTheme.fourthblackColor),):SizedBox(),
                SizedBox(height: w*0.03,),
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
                SizedBox(height:w*0.02),
                Container(
                  width: w*1,
                  height: w*0.14,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            select1=true;
                            select2=false;
                            select3=false;
                            select4=false;
                            setState(() {

                            });
                          },
                          child: Container(
                            height: w*0.1,
                            width: w*0.43,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w*0.1),
                              color: select1==true?colorTheme.primaryColor:colorTheme.secondaryColor,
                              border: Border.all(color: colorTheme.primaryColor),
                            ),
                            child:Center(
                                child: Text("Recommended",style: TextStyle(color: select1==true?colorTheme.secondaryColor:colorTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: w*0.04),)
                            ) ,
                          ),
                        ),
                        SizedBox(width: w*0.02,),
                        InkWell(
                          onTap: () {
                            select1=false;
                            select2=true;
                            select3=false;
                            select4=false;
                            setState(() {

                            });
                          },
                          child: Container(
                          height: w*0.1,
                            width: w*0.3,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(w*0.1),
                             color: select2==true?colorTheme.primaryColor:colorTheme.secondaryColor,
                             border: Border.all(color: colorTheme.primaryColor),
                           ),
                            child: Center(
                                child: Text("All Hotel",style: TextStyle(color: select2==true?colorTheme.secondaryColor:colorTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: w*0.04),)
                            ),
                      ),
                        ),
                        SizedBox(width: w*0.02,),
                        InkWell(
                          onTap: () {
                            select1=false;
                            select2=false;
                            select3=true;
                            select4=false;
                            setState(() {

                            });
                          },
                          child: Container(
                            height: w*0.1,
                            width: w*0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w*0.1),
                              color: select3==true?colorTheme.primaryColor:colorTheme.secondaryColor,
                              border: Border.all(color: colorTheme.primaryColor),
                            ),
                            child:Center(
                                child: Text("Trending",style: TextStyle(color:select3==true?colorTheme.secondaryColor: colorTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: w*0.04),)
                            ) ,
                          ),
                        ),
                        SizedBox(width: w*0.02,),
                        InkWell(
                            onTap: () {
                              select1=false;
                              select2=false;
                              select3=false;
                              select4=true;
                              setState(() {

                              });
                          },
                          child: Container(
                            height: w*0.1,
                            width: w*0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(w*0.1),
                              color: select4==true?colorTheme.primaryColor:colorTheme.secondaryColor,
                              border: Border.all(color: colorTheme.primaryColor),
                            ),
                            child:Center(
                                child: Text("Popular",style: TextStyle(color:select4==true?colorTheme.secondaryColor: colorTheme.primaryColor,fontWeight: FontWeight.w600,fontSize: w*0.04),)
                            ) ,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: w*0.02,),
                Expanded(
                  child: TabBarView(
                    children:[
                     select1? Container(
                        width: w*1,
                        height: w*0.8,
                        color: colorTheme.sixthtextfieldColor,
                        child:  ListView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: listview2.length,
                          itemBuilder: (BuildContext context, int index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => hotelbooking(),));
                                setState(() {

                                });
                              },
                              child: Stack(
                                children:[
                                  Center(
                                    child: Container(
                                    height: w*0.75,
                                    width: w*0.62,
                                    margin: EdgeInsets.all(w*0.03),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(w*0.13),
                                    ),
                                    child:Image(image: AssetImage(listview2[index]),fit: BoxFit.fill, height: w*0.34, width: w*0.6),
                                ),
                                  ),
                                  Positioned(
                                    top: w*0.13,
                                    right: w*0.08,
                                    child: Container(
                                      width: w*0.15,
                                      height: w*0.07,
                                      decoration: BoxDecoration(
                                        color: colorTheme.primaryColor,
                                        borderRadius: BorderRadius.circular(w*0.1)
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          SvgPicture.asset(image_picture.star,color: colorTheme.secondaryColor,),
                                          Text("5.0",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor,fontSize: w*0.03),)
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: w*0.1,
                                    left: w*0.07,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                       Text(listview4[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize:w*0.05,color: colorTheme.secondaryColor),),
                                        SizedBox(height: w*0.015,),
                                        Text("Lagos, Nigeria",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.secondaryColor),),
                                        SizedBox(height: w*0.015,),
                                        Text(price[index],style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,color: colorTheme.secondaryColor),)
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: w*0.13,
                                      right: w*0.08,
                                      child: InkWell(
                                          onTap: () {
                                            if(saving1.contains(index)){
                                              saving1.remove(index);
                                            }else{
                                              saving1.add(index);
                                            }
                                            setState(() {

                                            });
                                          },
                                          child: SvgPicture.asset(image_picture.savinggreen,color:saving1.contains(index)? colorTheme.primaryColor:colorTheme.secondaryColor,))
                                  ),
                              ],
                              ),
                            );
                          },
                        ),
                     ):
                     select2? Container(
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
                                  child: SvgPicture.asset(image_picture.bookingiconblack,color: list?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                                ),
                                SizedBox(width: w*0.04,),
                                InkWell(
                                  onTap: () {
                                    list=false;
                                    grid=true;
                                    setState(() {

                                    });
                                  },
                                  child: SvgPicture.asset(image_picture.home2menu,color:grid?colorTheme.primaryColor:colorTheme.fourthblackColor,),
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
                                                    if(saving2.contains(index)){
                                                      saving2.remove(index);
                                                    }else{
                                                      saving2.add(index);
                                                    }
                                                    setState(() {

                                                    });
                                                  },
                                                    child: SvgPicture.asset(image_picture.savingblack,color:saving2.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor)),
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
                                                        if(saving3.contains(index)){
                                                          saving3.remove(index);
                                                        }else{
                                                          saving3.add(index);
                                                        }
                                                        setState(() {

                                                        });
                                                      },
                                                      child: SvgPicture.asset(image_picture.savinggreen,color: saving3.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor,)),
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
                      ):
                      select3?Container(color:colorTheme.lightgrew,):
                      select4?Container(color:colorTheme.lightgrew,):SizedBox()
                   ]
                  ),
                ),
                SizedBox(height: w*0.02,),
                select1?Container(
                  width: w*1,
                  height: w*0.14,
                  color:colorTheme.secondaryColor,
                  child: Padding(
                    padding:  EdgeInsets.all(w*0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Recently Booked",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.fourthblackColor),),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Home2(),));
                            setState(() {

                            });
                          },
                            child: Text("See All",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05,color: colorTheme.primaryColor),)),
                      ],
                    ),
                  ),
                ):SizedBox(),
                // SizedBox(height: w*0.01,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
