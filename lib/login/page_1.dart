import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/unbording.dart';
import 'package:flutter/material.dart';

import 'loading_page.dart';
import '../main/main.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {

  //controller
  int currentIndex=0;
  PageController controller=PageController();

  @override

  // void initState() {
  //   // TODO: implement initState
  //   Future.delayed(Duration(seconds: 4)).then((value) => Navigator.push(context, MaterialPageRoute(builder: (context) => ,)));
  //   super.initState();
  // }


  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          Container(
            height:w*1.6,
            width: w*1,
             // color: Colors.red,
            child: PageView.builder(
              controller: controller,
                padEnds: false,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  setState(() {
                    currentIndex=index;
                  });
                },
                itemBuilder:(_,i) {
                return Column(
                  children: [
                    Container(
                      height: w*1.1,
                      width: w*1,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(contents[i].image),fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    SizedBox(height: w*0.06,),
                    Text(contents[i].title,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: colorTheme.fourthblackColor,fontSize: w*0.09,fontWeight:FontWeight.w700 ),
                    ),
                    SizedBox(height: w*0.01,),
                    Text(contents[i].discription,
                      textAlign: TextAlign.center,
                    style: TextStyle(color: colorTheme.thirdgreyColor,fontWeight: FontWeight.w700),)
                  ],
                );
                },
            ),
          ),
          SizedBox(height: w*0.03,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(3,
                      (index) => Container(
                        height: w*0.022,
                        width: currentIndex==index?w*0.095:w*0.04,
                        margin: EdgeInsets.only(right: w*0.04),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(w*0.03),
                          color: currentIndex==index?colorTheme.primaryColor:colorTheme.fifthColor,
                        ),
                      )),
            ),
          SizedBox(height: w*0.03,),
          InkWell(
            onTap: () {
              if(currentIndex==2){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>loadingPage() ,));
              }
              else{
                controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
              }
            },
            child: Container(
              height: w*0.13,
              width: w*0.8,
              decoration: BoxDecoration(
                color: colorTheme.primaryColor,
                borderRadius: BorderRadius.circular(w*0.1),
              ),
              child: Center(
                child: Text(currentIndex==2?"Done":"Next",
                  style: TextStyle(fontSize: w*0.05,color: colorTheme.secondaryColor,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
          SizedBox(height: w*0.03,),
          currentIndex==2?SizedBox():
          InkWell(
            onTap: () {
              controller.jumpToPage(2);
            },
            child: Container(
              height: w*0.13,
              width: w*0.8,
              decoration: BoxDecoration(
                color: colorTheme.primaryColor,
                borderRadius: BorderRadius.circular(w*0.1),
              ),
              child: Center(
                child: Text("Skip",
                  style: TextStyle(fontSize: w*0.05,color: colorTheme.secondaryColor,fontWeight: FontWeight.w600),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
