import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(      //AppBar Voltar
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(47, 39, 147, 1.0),
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
      ),
      body: Container(            //Container Body
        padding: EdgeInsets.only(
          top: 2,
          left: 40,
          right: 40,
        ),
        color: Color.fromRGBO(47, 39, 147, 1.0),
        child: ListView(
          children: <Widget>[
            SizedBox(     //logo
              width: 120,
              height: 120,
              child: Image.asset("images/logo-branco.png"),
            ),
            SizedBox(height: 15,),
            TextFormField(    //E-mail
              keyboardType: TextInputType.emailAddress,  //aparecer o @ (identificar que é para inserir e-mail)
              decoration: InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                enabledBorder: UnderlineInputBorder(      
                borderSide: BorderSide(color: Colors.white)
                ),
              ),  
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 8,),
            TextFormField(   //Senha
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
                enabledBorder: UnderlineInputBorder(      
                borderSide: BorderSide(color: Colors.white)
                ),
              ),
               style: TextStyle(
                fontSize: 20,
              ),
            ),
            Container(      //recuperar senha
              height: 40,
              alignment: Alignment.centerRight,
              child: FlatButton(
                textColor: Colors.white,
                child: Text(
                  "Forgot password?",
                  textAlign: TextAlign.right,
                ),
                
                onPressed: () {}, 
                
              ),
            ),
            SizedBox(height: 30,),
            Container(      //botão login
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: FlatButton(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Color.fromRGBO(47, 39, 147, 1.0),
                      fontSize: 22,
              
                    ),
                    ),
                  onPressed: () {  },
                ),
              ),
            SizedBox(height: 20,),
            Container(      //faça login com
              child: Text(
                "OR LOGIN WITH",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20,),
            Container(      //botão facebook
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(59, 89, 152, 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Facebook",
                        style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,

                          ),
                        ),
                      ),
                    ]
                  ),
                  onPressed: () {  },
                ),
            ),
            SizedBox(height: 10),
            Container(      //google
              height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(221, 75, 57, 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Google",
                        style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,

                          ),
                        ),
                      ),
                    ]
                  ),
                  onPressed: () {  },
                ),
            ),
          ]
        ),
      ),
      
    );
  }
}
