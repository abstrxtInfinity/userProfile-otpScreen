import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:login_signup/constants/constants.dart';
import 'package:login_signup/screens/userProfile_screen.dart';

class OtpScreen extends StatelessWidget {
  static const routeName = '/otp_screen';
  final String phoneNumber;
  OtpScreen({this.phoneNumber});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 30,
            color: Colors.black,
          ),
        ),
        title: Text(
          'OTP Verification',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  'OTP Verification',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'We sent your code to $phoneNumber',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff818181),
                  ),
                ),
                OtpForm(),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 250,
                  height: 50,
                  child: RaisedButton(
                    color: Color(0xffffdc3d),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(UserProfileScreen.routeName);

                    },
                    child: Text(
                      'Verify and continue',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Resend OTP',
                    style: TextStyle(
                      color: Color(0xff818181),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OtpForm extends StatefulWidget {
  @override
  _OtpFormState createState() => _OtpFormState();
}

class _OtpFormState extends State<OtpForm> {
  FocusNode pin2FocusNode;
  FocusNode pin3FocusNode;
  FocusNode pin4FocusNode;
  String otp = '';
  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void nextField({String value, FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
    setState(() {
      otp = otp + value;
    });
    print(otp);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 100),
      child: Form(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                cursorColor: Color(0xffffdc3d),
                style: TextStyle(fontSize: 26),
                decoration: inputDecoration,
                autofocus: true,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin2FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin2FocusNode,
                cursorColor: Color(0xffffdc3d),
                style: TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin3FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin3FocusNode,
                cursorColor: Color(0xffffdc3d),
                style: TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  nextField(value: value, focusNode: pin4FocusNode);
                },
              ),
            ),
            SizedBox(
              width: size.width * 0.16,
              child: TextFormField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                obscureText: true,
                focusNode: pin4FocusNode,
                cursorColor: Color(0xffffdc3d),
                style: TextStyle(fontSize: 26),
                decoration: inputDecoration,
                onChanged: (value) {
                  pin4FocusNode.unfocus();
                  setState(() {
                    otp = otp + value;
                  });
                  print(otp);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
