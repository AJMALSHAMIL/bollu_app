import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../main/main.dart';

class search1 extends StatefulWidget {
  const search1({super.key});

  @override
  State<search1> createState() => _search1State();
}

class _search1State extends State<search1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTheme.secondaryColor,
      body: Padding(
        padding:  EdgeInsets.all(w*0.03),
        child: Column(
          children:[
            SizedBox(height: w*0.2,),
            Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(w*0.05),
                color: colorTheme.sixthtextfieldColor
            ),
            child: TextFormField(
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.done,
              decoration:InputDecoration(
                  labelText: "Search",
                  labelStyle: TextStyle(color: colorTheme.thirdgreyColor),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(w*0.05),
                    borderSide: BorderSide(color: colorTheme.primaryColor),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(w*0.05),
                    borderSide: BorderSide(color: colorTheme.thirdgreyColor),
                  ),
                  prefixIcon: Padding(
                    padding:  EdgeInsets.all(w*0.03),
                    child: Container(
                      child: SvgPicture.asset(image_picture.searchicon),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding:  EdgeInsets.all(w*0.03),
                    child: Container(
                      child: SvgPicture.asset(image_picture.searchsufix),
                    ),
                  )
              ),
            ),
          ),
          ]
        ),
      ),
    );
  }
}

