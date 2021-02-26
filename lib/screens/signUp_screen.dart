import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_signup/screens/otp_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          'Continue with phone',
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
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.7,
                        0.9
                      ],
                      colors: [
                        Color(0xffFFFFFF),
                        Color(0xffF7F7F7),
                      ]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 130,
                      child: Image.asset(
                        'assets/images/holding-phone.png',
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 64, vertical: 14),
                      child: Text(
                        "You'll receive a 4 digit code to verify next.",
                        style: TextStyle(
                          fontSize: 22,
                          color: Color(0xff818181),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: size.height * 0.12,
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: TextField(
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                          onChanged: (value) {
                            phoneNumber = value;
                          },
                          keyboardType: TextInputType.phone,
                          textAlign: TextAlign.center,
                          cursorColor: Color(0xffffdc3d),
                          decoration: InputDecoration(

                            labelStyle: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                              color: Colors.grey[700],
                            ),
                            labelText: 'Enter you phone number',
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: new BorderSide(
                                width: 2,
                                color: Color(0xffffdc3d),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              borderSide: new BorderSide(
                                  width: 2, color: Colors.grey[200]),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 150,
                      height: 50,
                      child: RaisedButton(
                        color: Color(0xffffdc3d),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  OtpScreen(phoneNumber: phoneNumber),
                            ),
                          );
                          print(phoneNumber);
                        },
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
