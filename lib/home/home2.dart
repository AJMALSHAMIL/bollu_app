import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';
import 'hotelbooking.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {

  // list&grid
  bool list2=true;
  bool grid2=false;

  // listview

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
        title: Text("Recently Booked",
          style: TextStyle(fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor,
              fontSize:w*0.065 ),),
        actions: [
          Padding(
            padding: EdgeInsets.all(w*0.03),
            child: Row(
              children: [
                  InkWell(
                    onTap: () {
                      list2=true;
                      grid2=false;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: w*0.07,
                      height: w*0.07,
                      child: SvgPicture.asset(image_picture.Bookmarkgreen,color: list2?colorTheme.primaryColor:colorTheme.fourthblackColor,),
                    ),
                  ),
                  SizedBox(width: w*0.04,),
                  InkWell(
                    onTap: () {
                      list2=false;
                      grid2=true;
                      setState(() {

                      });
                    },
                    child: Container(
                      width: w*0.07,
                      height: w*0.07,
                      child: SvgPicture.asset(image_picture.home2menu,color: grid2?colorTheme.primaryColor:colorTheme.fourthblackColor),
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
      body: list2?Container(
        width: w*1,
        color: colorTheme.lightgrew,
       child: Padding(
         padding:  EdgeInsets.all(w*.03),
         child: ListView.builder(
           physics: BouncingScrollPhysics(),
           shrinkWrap: true,
           scrollDirection: Axis.vertical,
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
                 height: w*0.3,
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
