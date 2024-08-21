import 'package:bollu_app/home/cancelhotelbooking.dart';
import 'package:bollu_app/home/ticket.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../main/main.dart';

class booking extends StatefulWidget {
  const booking({super.key});

  @override
  State<booking> createState() => _bookingState();
}

class _bookingState extends State<booking> {


  List listimage=[
    image_picture.list1,
    image_picture.list2,
    image_picture.list3,
    image_picture.list4,
    image_picture.list5,
    image_picture.list6,
  ];

  bool select1=false;
  bool select2=false;


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: colorTheme.lightgrew,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: colorTheme.secondaryColor,
          leading:
          Row(
            children: [
              SizedBox(width: w*0.05,),
              SvgPicture.asset(image_picture.bolulogo,width: w*0.1,),
            ],
          ),
          title: Text("My Booking",style: TextStyle(fontWeight: FontWeight.w700,color:colorTheme.fourthblackColor,fontSize: w*0.07),),
          actions: [
            InkWell(
               onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => search1(),));
                 setState(() {

                 });
               },
                child: SvgPicture.asset(image_picture.searchicon,color: colorTheme.fourthblackColor,width: w*0.1,)),
            SizedBox(width: w*0.03,)
          ],
        ),
        body: Column(
          children: [
            SizedBox(height: w*0.03,),
           Container(
             width: w*1,
             height: w*0.11,
             color: colorTheme.secondaryColor,
             child :TabBar(
               labelColor: colorTheme.secondaryColor,
               unselectedLabelColor: colorTheme.primaryColor,
               indicator: BoxDecoration(
                    color: colorTheme.primaryColor,
                   borderRadius: BorderRadius.circular(w*0.07),
               ),
               tabs: [
                 Tab(
                   text: "Ongoing",
                 ),
                 Tab(
                   text: "Compleated",
                 ),
                 Tab(
                   text: "cancelled",
                 )
               ],
             ),
           ),
            Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      width: w*1,
                      color: colorTheme.lightgrew,
                      child: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listimage.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                width: w*1,
                                height: w*0.5,
                                margin: EdgeInsets.all(w*0.03),
                                decoration: BoxDecoration(
                                  color: colorTheme.secondaryColor,
                                  borderRadius: BorderRadius.circular(w*0.04),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(w*.04),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: w*0.25,
                                            height: w*0.25,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(listimage[index]),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(w*0.03)
                                            ),
                                              ),
                                          SizedBox(width: w*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Intercontinental Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05),),
                                              SizedBox(height: w*0.02,),
                                              Text("Lagos, Nigeria",style: TextStyle(fontWeight: FontWeight.w400),),
                                              SizedBox(height: w*0.02,),
                                              Container(
                                                width: w*0.2,
                                                height: w*0.08,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.03),
                                                  color: colorTheme.lightgrew,
                                                ),
                                                child: Center(
                                                  child: Text("Paid",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.primaryColor),),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color: colorTheme.thirdgreyColor,
                                        thickness: w*0.002,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                backgroundColor: colorTheme.secondaryColor,
                                                showDragHandle: true,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topRight:Radius.circular(w*0.1),
                                                      topLeft: Radius.circular(w*0.1)),
                                                ),
                                                  context: context,
                                                  builder: (context) {
                                                    return Container(
                                                      width: w*1,
                                                      height: w*0.6,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          Text("Cancel Booking",style: TextStyle(fontWeight: FontWeight.w700,color:colorTheme.seventhred,fontSize: w*0.055),),
                                                          Divider(
                                                            thickness: w*0.001,
                                                            color: colorTheme.thirdgreyColor,
                                                            endIndent: w*0.07,
                                                            indent: w*0.07,
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text("Are you sure you want to cancel your ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                                              Text(" hotel bookings?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.045,color: colorTheme.thirdgreyColor),),
                                                            ],
                                                          ),
                                                          Column(
                                                            children: [
                                                              Text("Only 80% of the money you can refund from your payment ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.03,color: colorTheme.thirdgreyColor),),
                                                              Text("according to our policy ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: w*0.03,color: colorTheme.thirdgreyColor),),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                            children: [
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.pop(context);
                                                                  setState(() {

                                                                  });
                                                                },
                                                                child: Container(
                                                                  height: w*0.14,
                                                                  width: w*0.35,
                                                                  decoration: BoxDecoration(
                                                                    color: colorTheme.lightgrew,
                                                                    borderRadius: BorderRadius.circular(w*0.2),
                                                                  ),
                                                                  child: Center(child: Text("Cancel",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor),)),
                                                                ),
                                                              ),
                                                              InkWell(
                                                                onTap: () {
                                                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => cancelbooking(),));
                                                                  setState(() {

                                                                  });
                                                                },
                                                                child: Container(
                                                                  height: w*0.14,
                                                                  width: w*0.35,
                                                                  decoration: BoxDecoration(
                                                                    color: colorTheme.primaryColor,
                                                                    borderRadius: BorderRadius.circular(w*0.2),
                                                                  ),
                                                                  child: Center(child: Text("Yes, Continue",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor),)),
                                                                ),
                                                              ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  },);
                                            },
                                            child: Container(
                                              width: w*0.34,
                                              height: w*0.09,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(w*0.1),
                                                color:colorTheme.secondaryColor,
                                                border: Border.all(color: colorTheme.primaryColor)
                                              ),
                                              child: Center(
                                                child: Text("Cancel Booking",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.primaryColor,),),
                                              ),
                                            ),
                                          ),
                                          // SizedBox(width: w*0.03,),
                                          InkWell(
                                            onTap: () {
                                              Navigator.push(context, MaterialPageRoute(builder: (context) => ticket(),));
                                              setState(() {

                                              });
                                            },
                                            child: Container(
                                              width: w*0.34,
                                              height: w*0.09,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(w*0.1),
                                                color: colorTheme.primaryColor,
                                                  border: Border.all(color: colorTheme.primaryColor)
                                              ),
                                              child: Center(
                                                child: Text("View Ticket",style: TextStyle(fontWeight: FontWeight.w600,color: colorTheme.secondaryColor,),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },),
                      ),
                    ),
                    Container(
                      width: w*1,
                      color: colorTheme.lightgrew,
                      child: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listimage.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                width: w*1,
                                height: w*0.5,
                                margin: EdgeInsets.all(w*0.03),
                                decoration: BoxDecoration(
                                  color: colorTheme.secondaryColor,
                                  borderRadius: BorderRadius.circular(w*0.04)
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(w*.04),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: w*0.25,
                                            height: w*0.25,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(listimage[index]),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(w*0.03)
                                            ),
                                              ),
                                          SizedBox(width: w*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Intercontinental Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05),),
                                              SizedBox(height: w*0.02,),
                                              Text("Lagos, Nigeria",style: TextStyle(fontWeight: FontWeight.w400),),
                                              SizedBox(height: w*0.02,),
                                              Container(
                                                width: w*0.3,
                                                height: w*0.08,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.03),
                                                  color: colorTheme.lightgrew,
                                                ),
                                                child: Center(
                                                  child: Text("Completed",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.primaryColor),),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color: colorTheme.thirdgreyColor,
                                        thickness: w*0.002,
                                      ),
                                     Container(
                                       width: w*1,
                                       height: w*0.08,
                                       color: colorTheme.lightgrew,
                                       child: Row(
                                         children: [
                                           SizedBox(width: w*0.05,),
                                           Image(image: AssetImage(image_picture.greentick),width: w*0.05,),
                                           SizedBox(width: w*0.03,),
                                           Center(
                                             child: Text("yay. you have completed it!",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.primaryColor),),
                                           ),
                                         ],
                                       ),
                                     )
                                    ],
                                  ),
                                ),
                              );
                            },),
                      ),
                    ),
                    Container(
                      width: w*1,
                      color: colorTheme.lightgrew,
                      child: Padding(
                        padding:  EdgeInsets.all(w*0.03),
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listimage.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                width: w*1,
                                height: w*0.5,
                                margin: EdgeInsets.all(w*0.03),
                                decoration: BoxDecoration(
                                  color: colorTheme.secondaryColor,
                                  borderRadius: BorderRadius.circular(w*0.04),
                                ),
                                child: Padding(
                                  padding:  EdgeInsets.all(w*.04),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            width: w*0.25,
                                            height: w*0.25,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(image: AssetImage(listimage[index]),fit: BoxFit.fill),
                                              borderRadius: BorderRadius.circular(w*0.03)
                                            ),
                                              ),
                                          SizedBox(width: w*0.03,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Intercontinental Hotel",style: TextStyle(fontWeight: FontWeight.w700,fontSize: w*0.05),),
                                              SizedBox(height: w*0.02,),
                                              Text("Lagos, Nigeria",style: TextStyle(fontWeight: FontWeight.w400),),
                                              SizedBox(height: w*0.02,),
                                              Container(
                                                width: w*0.45,
                                                height: w*0.08,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(w*0.03),
                                                  color: colorTheme.lightred,
                                                ),
                                                child: Center(
                                                  child: Text("Canceled & Refunded",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.seventhred),),
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      Divider(
                                        color: colorTheme.thirdgreyColor,
                                        thickness: w*0.002,
                                      ),
                                      Container(
                                        width: w*1,
                                        height: w*0.08,
                                        color: colorTheme.lightred,
                                        child: Row(
                                          children: [
                                            SizedBox(width: w*0.05,),
                                            Image(image: AssetImage(image_picture.alert),width: w*0.05,),
                                            SizedBox(width: w*0.03,),
                                            Center(
                                              child: Text("You canceled this hotel booking",style: TextStyle(fontWeight: FontWeight.w400,color: colorTheme.seventhred),),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },),
                      ),
                    ),

                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}
