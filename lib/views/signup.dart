import 'package:flutter/material.dart';
import 'package:quiz_app/views/signin.dart';
import 'package:quiz_app/widgets/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password, _name;
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
                keyboardType: TextInputType.text ,
                validator: (val) {
                  return val.isEmpty ? "Enter Correct Name" : null;
                },
                decoration: InputDecoration(
                  hintText: "Name",
                ),
                onChanged: (value) {
                  _name = value;
                },
              ),
              SizedBox(
                height: 6,
              ),
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
                onTap: (){},
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 18.0),
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width - 48,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Text(
                    'Sign Un',
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
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 15.5,
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (ctx) => SignIn(),
                          )
                      );
                    },
                    child: Text(
                      "Sign In ",
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
