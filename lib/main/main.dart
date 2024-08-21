import 'package:bollu_app/booking/booking.dart';
import 'package:bollu_app/home/cancelhotelbooking.dart';
import 'package:bollu_app/home/nameofreservation.dart';
import 'package:bollu_app/home/newcard.dart';
import 'package:bollu_app/home/payment1.dart';
import 'package:bollu_app/home/payment2.dart';
import 'package:bollu_app/home/payment3.dart';
import 'package:bollu_app/home/selectdate.dart';
import 'package:bollu_app/home/ticket.dart';
import 'package:bollu_app/login/accound_page.dart';
import 'package:bollu_app/login/forgotpassword_1.dart';
import 'package:bollu_app/login/forgotpassword_3.dart';
import 'package:bollu_app/home/home.dart';
import 'package:bollu_app/home/home2.dart';
import 'package:bollu_app/home/home3.dart';
import 'package:bollu_app/home/home_page_1.dart';
import 'package:bollu_app/login/loading_page.dart';
import 'package:bollu_app/login/login_accound_page.dart';
import 'package:bollu_app/login/login_page.dart';
import 'package:bollu_app/login/page_1.dart';
import 'package:bollu_app/login/splach_screen.dart';
import 'package:bollu_app/profile/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/hotelbooking.dart';
import '../login/fill_profie_page.dart';
import '../login/forgotpassword_2.dart';

var w;
var h;

Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {

    w=MediaQuery.of(context).size.width;
    h=MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.urbanistTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        home: splash(),
      ),
    );
  }
}
