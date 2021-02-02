import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_lab_05_login_start/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String errmsg = '';
  final _formkey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void login() {
    //Code for Login
    FocusScope.of(context).unfocus(); //หุบแป้น
    bool passValidate = _formkey.currentState.validate();
    errmsg = '';
    if (passValidate) {
      if (_passwordController.text == 'x') {
        saveUser();
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Home(_emailController.text, _passwordController.text)));
      }
      print('pass');
    } else {
      errmsg = 'Wrong password';
    }
  }

  void saveUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("user", _emailController.text);
    prefs.setString("pwd", _passwordController.text);
  }

  TextFormField getEmail() {
    return TextFormField(
      controller: _emailController,
      validator: (String inputEmall) {
        if (inputEmall.isEmpty) {
          return "Please Input Email";
        } else {
          if (!EmailValidator.validate(inputEmall)) {
            return 'Please Input Email add';
          }
          return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.email,
          color: Colors.grey[700],
          size: 20.0,
        ),
      ),
    );
  }

  TextFormField getPassword() {
    return TextFormField(
      controller: _passwordController,
      validator: (String inputPassword) {
        if (inputPassword.isEmpty) {
          return "Please Input Password";
        } else {
          return null;
        }
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Icon(
          Icons.lock,
          color: Colors.grey[700],
          size: 20.0,
        ),
      ),
    );
  }

  SizedBox getLoginButton() {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: RaisedButton(
        color: Colors.grey,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.white),
        ),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 23,
          ),
        ),
        onPressed: login,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Container(
        padding: EdgeInsets.all(10),
        width: double.infinity,
        child: Column(
          children: [
            //---Email---
            getEmail(),

            SizedBox(height: 10),

            //---Password---
            getPassword(),

            SizedBox(height: 20),
            getLoginButton(),
            SizedBox(height: 15),
            Container(
              child: Text(
                errmsg, //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'email', //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              child: Text(
                'password', //Code for Show error message
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Function to store user detail

  //Function Return email textfield

  //Function Return password textfield

}
