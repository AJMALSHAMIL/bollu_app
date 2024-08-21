import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pinput/pinput.dart';

import '../main/main.dart';
import 'hotelbooking.dart';

class Home3 extends StatefulWidget {
  const Home3({super.key});

  @override
  State<Home3> createState() => _Home3State();
}

class _Home3State extends State<Home3> {



  // list&grid
  bool list1=false;
  bool grid1=true;

  // gridview
  List gridview=[
    image_picture.list1,
    image_picture.list2,
    image_picture.list3,
    image_picture.list4,
    image_picture.list5,
    image_picture.list6,
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
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.secondaryColor,
        leading: IconButton(
            onPressed:() {
              Navigator.pop(context);

            }, icon:Container(
          height: w*0.1,
          width: w*0.1,
          child: SvgPicture.asset("assets/icons/Arrow - Left.svg"),
        )
        ),
        title: Text("My Bookmark",
          style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor,
              fontSize:w*0.065 ),),
        actions: [
          Padding(
            padding: EdgeInsets.all(w*0.03),
            child: Row(
              children: [
                InkWell(
                  onTap: () {
                    list1=true;
                    grid1=false;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: w*0.07,
                    height: w*0.07,
                    child: SvgPicture.asset(image_picture.bookingiconblack,color: list1?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                  ),
                ),
                SizedBox(width: w*0.04,),
                InkWell(
                  onTap: () {
                    list1=false;
                    grid1=true;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: w*0.07,
                    height: w*0.07,
                    child: SvgPicture.asset(image_picture.home2menu,color: grid1?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      body: list1?Container(
        width: w*1,
        color: colorTheme.lightgrew,
        child: Padding(
          padding:  EdgeInsets.all(w*.03),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: gridview.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => hotelbooking(),));
                  setState(() {

                  });
                },
                child: Container(
                  width: w*1,
                  height: w*0.3,
                  margin: EdgeInsets.all(w*0.015),
                  decoration: BoxDecoration(
                    color:colorTheme.secondaryColor,
                    borderRadius: BorderRadius.circular(w*0.03),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(image: AssetImage(gridview[index]),fit: BoxFit.fill,),
                      SizedBox(width: w*0.02,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Radisson Blu Hotel",style: TextStyle(fontSize: w*0.04,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
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
                                setState(() {
                                  if(saving1.contains(index)){
                                    saving1.remove(index);
                                  }else{
                                    saving1.add(index);
                                  }
                                });
                              },
                              child: SvgPicture.asset(image_picture.savinggreen,color: saving1.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor,)),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ):
      Container(
        width: w*1,
        height: h*1,
        color: colorTheme.lightgrew,
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: gridview.length,
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
                       Image(image: AssetImage(gridview[index]),fit: BoxFit.fill,),
                       Text("Radisson Blu Hotel",style: TextStyle(fontSize: w*0.059,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
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
                               child: SvgPicture.asset(image_picture.savinggreen,color: saving2.contains(index)?colorTheme.primaryColor:colorTheme.fourthblackColor,)),
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
    );
  }
}
