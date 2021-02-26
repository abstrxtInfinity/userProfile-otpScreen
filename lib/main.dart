import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/screens/userProfile_screen.dart';

import './screens/signUp_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'OtpLogin',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.rubikTextTheme(),
        ),
      debugShowCheckedModeBanner: false,
      home: SignUpScreen(),
      routes: {
        UserProfileScreen.routeName : (ctx)=> UserProfileScreen(),
      },

    );
  }
}
