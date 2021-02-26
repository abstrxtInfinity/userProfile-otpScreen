import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_signup/widgets/userProfile_form.dart';

class UserProfileScreen extends StatelessWidget {
  static const routeName = '/userProfileScreen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Color(0xff232123),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: size.height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Icon(
                    LineAwesomeIcons.arrow_left,
                    color: Colors.white,
                  ),
                  Container(
                    height: size.height * 0.1,
                    width: size.height * 0.1,
                    margin: EdgeInsets.only(top: size.height* 0.03),
                    child: Stack(
                      children: [
                        CircleAvatar(
                          radius: size.height * 0.06,
                          backgroundImage: AssetImage("assets/images/avatar.png"),
                          backgroundColor: Colors.grey[200],
                        ),
                        Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                ///Change Image
                              },
                              child: Container(
                                height: size.height * 0.03,
                                width: size.height * 0.03,
                                decoration: BoxDecoration(
                                  color: Colors.amber,
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  LineAwesomeIcons.pen,
                                  color: Colors.black,
                                  size: 16,
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Icon(
                    LineAwesomeIcons.sun,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                ],
              ),
              SizedBox(height: 40),
              Container(
                width: size.width*0.6,
                child: RaisedButton(
                  color: Colors.amber,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  onPressed: () {
                    ///Save form
                    Navigator.of(context).pushReplacementNamed(UserProfileScreen.routeName);
                  },
                  child: Text(
                    'Save Information',
                    style:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.06),
              UserProfileForm(),
            ],
          ),
        ),
      ),
    );
  }
}
