import 'package:flutter/material.dart';
import 'package:quiz_app/views/signup.dart';
import 'package:quiz_app/widgets/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: appBar(context),
        brightness: Brightness.light,
      ),
      body: Form(
        key: _formKey,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (val) {
                  return val.isEmpty ? "Enter Correct Email" : null;
                },
                decoration: InputDecoration(
                  hintText: "Email",
                ),
                onChanged: (value) {
                  _email = value;
                },
              ),
              SizedBox(
                height: 6,
              ),
              TextFormField(
                obscureText: true,
                validator: (val) {
                  return val.isEmpty ? "Enter Correct Password" : null;
                },
                decoration: InputDecoration(
                  hintText: "Password",
                ),
                onChanged: (value) {
                  _password = value;
                },
              ),
              SizedBox(
                height: 24.0,
              ),
              GestureDetector(
                onTap: (){} ,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (ctx) => SignUp(),
                        )
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 15.5,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 80.0,
              )
            ],
          ),
        ),
      ),
    );
  }
}
