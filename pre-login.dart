import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movee/pages/login-page.dart';
import 'package:movee/pages/signup-page.dart';


class PreLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          top: 60,
          left: 20,
          right: 20,
        ),
        color: Color.fromRGBO(47, 39, 147, 1.0),
        child: ListView(
          children: <Widget>[
            //movee logo- escrito
            SizedBox(
              child: Text(
                  "movee",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 80,
                    ),
                  ),
               ),
            ),
            SizedBox(height: 80),
            Container(
              child: Text(
                "Start Now",
                textAlign: TextAlign.center,
                  style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 20,
                    ),
               ),
             ),
            ),
            SizedBox(height: 80),
            Container(      //login
              height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Login",
                        style: GoogleFonts.montserrat( 
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(47, 39, 147, 1.0),
                          fontSize: 20,

                          ),
                        ),
                      ),
                    ]
                  ),
                  onPressed: () {       //indo para loginpage
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginPage();
                      },
                    ),
                  );
                }, 
                ),
            ),
            SizedBox(height: 20),
            Container(      //signup
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: FlatButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Sign Up",
                      style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(47, 39, 147, 1.0),
                        fontSize: 20,
                      ),
                      ),
                    ),
                  ]
                ),
                onPressed: () {       //indo para SignUp page
                  Navigator.push(
                    context, 
                    MaterialPageRoute(
                      builder: (context) {
                        return SignupPage();
                      },
                    ),
                  );
                }, 
              ),
            ),
            SizedBox(height: 120),
            Container(
              child: Text(
                "Movee® 2020 ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ]
        ),
      ),
    );
  }
}