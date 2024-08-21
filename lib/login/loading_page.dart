import 'package:bollu_app/main/color_theme.dart';
import 'package:bollu_app/main/image_picture.dart';
import 'package:bollu_app/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../main/main.dart';

class loadingPage extends StatefulWidget {
  const loadingPage({super.key});

  @override
  State<loadingPage> createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {

  void initState(){
    Future.delayed(Duration(seconds: 4)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>login(),)));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:colorTheme.primaryColor,
      body: Padding(
        padding:  EdgeInsets.all(w*0.03),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: w*0.4,),
              Center(
                child: Container(
                  height: w*0.7,
                  width: w*0.6,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(image: AssetImage(image_picture.loading))
                  ),
                ),
              ),
              SizedBox(height: w*0.4,),
                Container(
                  child: LoadingAnimationWidget.hexagonDots(
                      color: colorTheme.secondaryColor,
                      size: w*0.2
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
