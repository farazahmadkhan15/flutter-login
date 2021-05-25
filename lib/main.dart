import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "LogIn",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: loginPage(title: 'Login'),
    );
  }
}

class loginPage extends StatefulWidget {
  loginPage({ Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _loginPageState createState() => _loginPageState();
}



class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {

     final emailField = TextField(
          obscureText: false,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final passwordField = TextField(
          obscureText: true,
          style: style,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
        );
        final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF4C1699),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.login, color:Color(0xFFF95FEF),),
                SizedBox(width: 20,),
           Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                     color:Color(0xFFF95FEF), )),
              ],
            ),
            
        )
        );

        final google = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF4C1699),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.email, color:Color(0xFFF95FEF),),
                SizedBox(width: 20,),
           Text("Login with Google",
                textAlign: TextAlign.center,
                style: style.copyWith(
                     color:Color(0xFFF95FEF), )),
              ],
            ),
            
        )
        );

                final facebook = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xFF4C1699),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {},
            child: Row(
              children: [
                Icon(Icons.facebook, color:Color(0xFFF95FEF),),
                SizedBox(width: 20,),
           Text("Login with facebook",
                textAlign: TextAlign.center,
                style: style.copyWith(
                     color:Color(0xFFF95FEF), )),
              ],
            ),
            
        )
        );

    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                SizedBox(                  
                  height: 55.0,
                  child: 
                  Text("Login for ", style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Color(0xFF4C1699) ) ,),
                 
                ),
                SizedBox(
                  height: 100.0,
                  child: Image.asset(
                    'assets/Logo.png',
                    fit: BoxFit.contain,)
                  

                ),
                SizedBox(height: 45.0),
                    emailField,
                    SizedBox(height: 25.0),
                    passwordField,
                    SizedBox(
                      height: 35.0,
                    ),
                    loginButon,
                    SizedBox(
                      height: 15.0,
                    ),
                    facebook,
                    SizedBox(
                      height: 15.0,
                    ),
                    google,
                    SizedBox(
                      height: 15.0,
                    ),
              ],
            ),
          ),

        ),
      ),
      
    );
  }

  TextStyle style = TextStyle(fontSize: 20.0);
}
