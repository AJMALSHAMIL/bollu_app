import 'package:bollu_app/home/nameofreservation.dart';
import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../main/main.dart';

class selectdate extends StatefulWidget {
  const selectdate({super.key});

  @override
  State<selectdate> createState() => _selectdateState();
}

class _selectdateState extends State<selectdate> {

  List<DateTime?> date=[];
  String firstDate = "select Date";
  String LastDate = "select Date";

  int count=1 ;

  int total =0;
  int price =150;


  @override
  Widget build(BuildContext context) {
  total=date.isEmpty?0:date.last!.difference(date.first!).inDays;

    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: colorTheme.secondaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);

          },icon:  Container(
            height: w*0.1,
            width: w*0.1,
            child: SvgPicture.asset(image_picture.arrow)
        ),
        ),
        title: Text("Select Date",style: TextStyle(fontSize: w*0.065,fontWeight: FontWeight.w700,color: colorTheme.fourthblackColor),),
      ),
      body: Container(
        width: w*1,
        child: Padding(
          padding:  EdgeInsets.all(w*0.03),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Container(
               width: w*1,
               height: w*0.7,
               color: colorTheme.lightgrew,
               child: CalendarDatePicker2(
                   config: CalendarDatePicker2Config(
                     firstDayOfWeek: 1,
                     calendarType: CalendarDatePicker2Type.range,
                     selectedDayTextStyle: TextStyle(color:colorTheme.secondaryColor, fontWeight: FontWeight.w400),
                     selectedDayHighlightColor: colorTheme.primaryColor,
                   ),
                 value: date,
                 onValueChanged: (dates) {
                     date=dates;


                     // if(date.length==1){
                     //   firstDate = date.first.toString().substring(0,10);
                     // }else if(date.length>1){
                       firstDate = DateFormat.yMMMd().format(date.first!);
                       LastDate = DateFormat.yMMMd().format(date.last!);
                       // }


                     print(DateFormat.yMMMd().format(DateTime.now()));
                     setState(() {

                     });
                 },
               ),
             ),
              // SizedBox(height: w*0.03,),
              Row(
                children: [
                  SizedBox(width: w*0.04,),
                  Text("Check in",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06),),
                  SizedBox(width: w*0.35,),
                  Text("Check out",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06),),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: w*0.4,
                    height: w*0.1,
                    decoration: BoxDecoration(
                      color: colorTheme.lightgrew,
                      borderRadius: BorderRadius.circular(w*0.03)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(w*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(firstDate,style: TextStyle(fontWeight: FontWeight.w600,),),
                          SvgPicture.asset(image_picture.calender),
                        ],
                      ),
                    ),
                  ),
                  SvgPicture.asset(image_picture.arrowDate),
                  Container(
                    width: w*0.4,
                    height: w*0.1,
                    decoration: BoxDecoration(
                      color: colorTheme.lightgrew,
                      borderRadius: BorderRadius.circular(w*0.03)
                    ),
                    child: Padding(
                      padding:  EdgeInsets.all(w*0.02),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(LastDate,style: TextStyle(fontWeight: FontWeight.w600,),),
                          SvgPicture.asset(image_picture.calender),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: w*0.03,),
                  Text("Guest",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06 ),),
                ],
              ),
              Container(
                width: w*1,
                height: w*0.18,
                decoration: BoxDecoration(
                  color: colorTheme.sixthtextfieldColor,
                  borderRadius: BorderRadius.circular(w*0.03),
                  border: Border.all(color: colorTheme.thirdgreyColor),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        count=count+1;
                        setState(() {

                        });
                      },
                      child: Container(
                        width: w*0.15,
                        height: w*0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorTheme.lightgrew
                        ),
                        child: Icon(Icons.add),
                      ),
                    ),
                    Text("$count",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.07),),
                    InkWell(
                      onTap: () {
                        count==1?count=1:count=count-1;
                        setState(() {

                        });
                      },
                      child: Container(
                        width: w*0.15,
                        height: w*0.15,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: colorTheme.lightgrew
                        ),
                        child: Icon(Icons.remove),
                      ),
                    ),
                  ],
                ) ,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Total :\$",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06 ),),
                  Text("${total*150*(count)}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: w*0.06 ),),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => reservation(),));
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
    );
  }
}
