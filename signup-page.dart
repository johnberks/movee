import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupPage extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(      //AppBar voltar
        preferredSize: Size.fromHeight(30.0),
        child: AppBar(
          backgroundColor: Color.fromRGBO(47, 39, 147, 1.0),
          bottomOpacity: 0.0,
          elevation: 0.0,
        ),
      ),
      body: Container(      //Container Body
        color: Color.fromRGBO(47, 39, 147, 1.0),
        padding: EdgeInsets.only(
          top: 35,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: <Widget>[
            Container(
              child: Text(
                "Register",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 30),
            Container(
              child: Row(      //row login com redes sociais
                children: <Widget>[
                  Container(      ///botão login google
                    width: 137,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(221, 75, 57, 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                       ),
                      ),
                    child: FlatButton(
                      child: Text(
                        "Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      onPressed: () {}, 
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(      ///botão login facebook
                    width: 137,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(59, 89, 152, 1.0),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                       ),
                      ),
                    child: FlatButton(
                      child: Text(
                        "Facebook",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
                      onPressed: () {}, 
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(      //e-mail signup text
              alignment: AlignmentDirectional.center,
              child: Text(
                "E-mail Signup",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 20),
            //itens de cadastro
            TextFormField(   //Nome
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "Name",
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
            SizedBox(height: 8,),
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
            SizedBox(height: 40,),
            Container(      //terms and conditions
             alignment: AlignmentDirectional.center,
             child: Text(
               "I agree with terms and conditions",
               style: TextStyle(
                 color: Colors.white,
               ),
              ),
            ),
            SizedBox(height: 40,),
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
                onPressed: () {       //indo para a pagina de foto
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
          ]
        ),
      ),
    );
  }
}


