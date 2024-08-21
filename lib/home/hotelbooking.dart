import 'dart:ffi';

import 'package:bollu_app/home/selectdate.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';

import '../main/main.dart';

class hotelbooking extends StatefulWidget {
  const  hotelbooking({super.key});

  @override
  State<hotelbooking> createState() => _hotelbookingState();
}

class _hotelbookingState extends State<hotelbooking> {

  ScrollController scrollController =ScrollController();

  List image=[
    image_picture.picture1,
    image_picture.picture2,
    image_picture.list3,
    image_picture.list4,
    image_picture.list5,
    image_picture.list6,
  ];

  List commentpic=[
    image_picture.profilepicture2,
    image_picture.profilepicture3,
    image_picture.profilepicture4,
    image_picture.profilepicture,
  ];
  List commentname=[
    "Ivande Othawa",
    "Nonso Davies",
    "Peter Shege",
    "Peter Shege"
  ];
  List commentdate=[
    "Jan 20, 2025",
    "Jan 20, 2025",
    "Jan 09, 2025",
    "Jan 15, 2025"
  ];
  List comment=[
    "Very nice and comfortable hotel, thank you for accompanying my vacation!",
    "The rooms are very elegant and the natural views are amazing can’t wait to come back again",
    "Very nice hotel, my friends and I are very satisfied with the service!",
    "Very nice and comfortable hotel, thank you for accompanying my vacation!",
  ];

  bool less =true;
  bool more =false;


  bool seeall =true;
  bool seeless =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        height: w*0.25,
        width: w*1,
        color: colorTheme.secondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Divider(
              color: colorTheme.thirdgreyColor,
              thickness: w*0.002,
              indent: w*0.03,
              endIndent: w*0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$205",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.06,color: colorTheme.primaryColor),),
                Text("/night",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.03),),
                InkWell(
                  onTap: () {
                    setState(() {

                    });
                  },
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>selectdate(),));
                      setState(() {

                      });
                    },
                    child: Container(
                      height: w*0.14,
                      width: w*0.6,
                      decoration: BoxDecoration(
                        color: colorTheme.primaryColor,
                        borderRadius: BorderRadius.circular(w*0.2),
                      ),
                      child: Center(child: Text("Book Now!",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                    ),
                  ),
                ),                ],
            )
          ],
        ),
      ),
      body: CustomScrollView(
        physics: ScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: colorTheme.secondaryColor,
            elevation: 0,
            expandedHeight: w*0.7,
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
            pinned: true,
             title: Text("Presidential Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.065,color: colorTheme.fourthblackColor),),
            flexibleSpace:FlexibleSpaceBar(
              background: Image(image: AssetImage(image_picture.list7),fit: BoxFit.fill,),
            ),
          ),
          SliverAppBar(
           backgroundColor: colorTheme.secondaryColor,
            leadingWidth: 0,
            title: Text("Presidential Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.065,color: colorTheme.fourthblackColor),),
          ),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Container(
              width: w*1,
              child: Padding(
                padding: EdgeInsets.all(w*0.04),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(image_picture.location),
                        SizedBox(width: w*0.02,),
                        Text("12 Eze Adele Road Rumuomasi Lagos Nigeria",style: TextStyle(fontWeight: FontWeight.w500,fontSize: w*0.04),)
                      ],
                    ),
                    SizedBox(height: w*0.06,),
                    Divider(
                      color: colorTheme.thirdgreyColor,
                      thickness: w*0.002,
                      indent: w*0.03,
                      endIndent: w*0.03,
                    ),
                    Padding(
                      padding: EdgeInsets.all(w*0.04),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Gallery Photos",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,),),
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  seeall=false;
                                  seeless=true;
                                  setState(() {

                                  });
                                },
                                  child:seeless?SizedBox():Text("See all",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,color: colorTheme.primaryColor),)
                              ),
                              InkWell(
                                  onTap: () {
                                    seeall=true;
                                    seeless=false;
                                    setState(() {

                                    });
                                  },
                                  child:seeall?SizedBox():Text("See less",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05,color: colorTheme.primaryColor),)
                              ),
                            ],
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: w*1,
                      height:seeall?w*0.4: w*0.7,
                      child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                         shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: seeall?3:6,
                          itemBuilder: (context, index) {
                            return Container(
                              width: w*0.4,
                              height: w*0.4,
                              // color: Colors.red,
                              margin: EdgeInsets.all(w*0.02),
                               child: Image(image: AssetImage(image[index]),fit: BoxFit.fill,),
                            );
                          }, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          // mainAxisSpacing: w*0.005,
                           crossAxisSpacing: w*0.0005,
                          // childAspectRatio: 0.65
                      ),
                      ),
                    ),
                    SizedBox(height: w*0.05,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Details",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06),),
                      ],
                    ),
                    SizedBox(height: w*0.03,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.hotel),
                            SizedBox(height: w*0.02,),
                            Text("Hotels",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.bedroom,),
                            Text("4 Bedrooms",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.bathroom),
                            Text("2 Bathrooms",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.sqft),
                            Text("3000 sqft",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: w*0.05,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Description",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06),),
                      ],
                    ),
                    SizedBox(height: w*0.03,),
                    Container(
                      width: w*1,
                      height: w*0.25,
                      child: ReadMoreText(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt aliqua.',
                       trimLines: 4,
                        trimMode: TrimMode.Line,
                        trimExpandedText: "Read less",
                        trimCollapsedText: "Read more",
                        lessStyle:  TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),
                        moreStyle: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),
                      ),
                    ),
                    SizedBox(height: w*0.03,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Facilities",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06,),),
                      ],
                    ),
                   SizedBox(height: w*0.04,),
                    Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.swimming),
                            Text("Swimming Pool",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        SizedBox(width: w*0.06,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.wifi),
                            Text("Wifi",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        SizedBox(width: w*0.1,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.restuarent),
                            Text("Restuarent",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                       SizedBox(width: w*0.12,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.parking),
                            Text("Parking",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: w*0.06,),
                    Row(
                      children: [
                        SizedBox(width: w*0.05,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.meeting),
                            Text("Meeting Room",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        SizedBox(width: w*0.06,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.elevator),
                            Text("Elevator",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        SizedBox(width: w*0.06,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.gym),
                            SizedBox(height: w*0.025,),
                            Text("Fitness Center",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                        SizedBox(width: w*0.06,),
                        Column(
                          children: [
                            SvgPicture.asset(image_picture.hours),
                            Text("24-hours Open",style: TextStyle(fontWeight: FontWeight.w300,fontSize: w*0.03),)
                          ],
                        ),
                      ],
                    ),

                    SizedBox(height: w*0.05,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Location",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06,),),
                      ],
                    ),
                    SizedBox(height: w*0.03,),
                    Container(
                      width: w*1,
                      height: w*0.5,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(image_picture.map1),fit: BoxFit.fill),
                      ),
                      child:Center(
                          child: SvgPicture.asset(image_picture.location,width: w*0.07,))
                    ),
                    SizedBox(height: w*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text("Review",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06,),),
                            SizedBox(width: w*0.03,),
                            SvgPicture.asset(image_picture.star),
                            Text("5.0",style: TextStyle(color: colorTheme.primaryColor,fontWeight: FontWeight.w600),),
                            Text("(4,345 reviews)",style: TextStyle(fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: w*0.02,),

                    Expanded(
                      child: Container(
                      width: w*1,
                      height: w*1.2,
                      child: ListView.builder(
                          itemCount: more?commentpic.length:2,
                          scrollDirection: Axis.vertical,
                          physics:ScrollPhysics(),
                          itemBuilder:(context, index) {
                            return Container(
                              width: w*1,
                              height: w*0.45,
                              margin: EdgeInsets.all(w*0.03),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(w*0.05),
                                color: colorTheme.secondaryColor,
                                 boxShadow: [BoxShadow(
                                    color: colorTheme.fourthblackColor.withOpacity(0.25),
                                   blurRadius: 4,
                                   spreadRadius: 2,
                                   offset: Offset(0, 4)
                                 )
                               ],
                              ),
                              child: Padding(
                                padding:  EdgeInsets.all(w*0.04),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: w*0.1,
                                              backgroundImage:AssetImage(commentpic[index]),
                                            ),
                                            SizedBox(width: w*0.04,),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(commentname[index],style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.05),),
                                                Text(commentdate[index],style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.04),),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Container(
                                          width: w*0.16,
                                          height: w*0.1,
                                          decoration: BoxDecoration(
                                            color: colorTheme.primaryColor,
                                            borderRadius: BorderRadius.circular(w*0.03)
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(image_picture.star,color: colorTheme.secondaryColor,),
                                              Text("5.0",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    Text(comment[index],
                                      style: TextStyle(fontWeight:FontWeight.w400 ),)
                                  ],
                                ),
                              ),
                            );
                          },
                      ),
                      ),
                    ),
                    SizedBox(height: w*0.01,),
                   InkWell(
                     onTap: () {
                       more=true;
                       less=false;

                       setState(() {

                       });
                     },
                     child:more?SizedBox():Container(
                       width: w*0.8,
                       height: w*0.1,
                       decoration: BoxDecoration(
                         color: colorTheme.lightgrew,
                         borderRadius: BorderRadius.circular(w*0.03),
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text("More",style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.primaryColor,fontSize: w*0.04),),
                           SvgPicture.asset(image_picture.dropdown,color: colorTheme.primaryColor,)
                         ],
                       ),
                     ),
                   ),
                   InkWell(
                     onTap: () {
                       more=false;
                       less=true;
                       setState(() {

                       });
                     },
                     child: less?SizedBox():Container(
                       width: w*0.8,
                       height: w*0.1,
                       decoration: BoxDecoration(
                         color: colorTheme.lightgrew,
                         borderRadius: BorderRadius.circular(w*0.03),
                       ),
                       child: Center(
                           child: Text("Less",
                             style: TextStyle(fontWeight: FontWeight.w500,color: colorTheme.primaryColor,fontSize: w*0.04),)),
                     ),
                   ),
                    SizedBox(height:w*0.23,),
                  ],
                ),
              ),
            ),
          )
          // SliverToBoxAdapter(
          //   child: ListView.builder(
          //     itemCount: 100,
          //     physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     itemBuilder: (context, index) => Text(index.toString()),),
          // )
        ],
        controller:scrollController ,
      ),
    );
  }
}
