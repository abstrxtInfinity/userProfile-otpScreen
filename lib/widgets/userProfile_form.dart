import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';


class UserProfileForm extends StatefulWidget {
  @override
  _UserProfileFormState createState() => _UserProfileFormState();
}

class _UserProfileFormState extends State<UserProfileForm> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String name;
  String phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                cursorColor: Colors.amber,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name',

                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),

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
                  suffixIcon: Icon(LineAwesomeIcons.mailchimp,color: Colors.white,),
                ),
              ),
              SizedBox(height: 30),
              TextFormField(
                cursorColor: Colors.amber,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'Enter your email address',

                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),

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
                  suffixIcon: Icon(Icons.email,color:Colors.white),

                ),

              ),
              SizedBox(height: 30),
              TextFormField(
                cursorColor: Colors.amber,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Mobile',
                  hintText: 'Enter your phone number',

                  labelStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),
                  hintStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey[700],
                  ),

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
                  suffixIcon: Icon(LineAwesomeIcons.phone,color: Colors.white,),

                ),

              ),

            ],
          ),
        ),
      ),

    );
  }
}
