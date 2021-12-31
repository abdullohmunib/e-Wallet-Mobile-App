import 'package:ewallet_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  Widget _authTitle() {
    return wAauthTitle(
      title: 'Login',
      subTitle: 'Enter your email and password',
    );
  }

  Widget _inputEmail() {
    return Container(
      child: TextField(
        decoration: InputDecoration(hintText: 'Email'),
      ),
    );
  }

  Widget _inputPassword() {
    return Stack(
      children: <Widget>[
        Container(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Password',
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: IconButton(
            icon: Icon(Icons.visibility),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _forgotPassword() {
    return GestureDetector(
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
            color: Colors.transparent,
            child: Text("Forgot Password ?")),
      ),
      onTap: () {
        print('Forgot password ?');
      },
    );
  }

  Widget _inputSubmit() {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Theme.of(context).primaryColor,
        textColor: Colors.white,
        shape: StadiumBorder(),
        child: Text('Login'),
        onPressed: () {},
      ),
    );
  }

  Widget _textDivider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: <Widget>[
          //garis
          Expanded(child: Divider()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('OR CONNECT WITH',
                style: TextStyle(fontSize: 12, color: Colors.grey)),
          ),
          Expanded(child: Divider()),
        ],
      ),
    );
  }

  Widget _googleSignIn() {
    return Container(
      width: double.infinity,
      child: RaisedButton.icon(
          shape: StadiumBorder(),
          onPressed: () {},
          icon: Icon(Icons.adb),
          label: Text('Google')),
    );
  }

  Widget _textRegister() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Dont have an account yet ?"),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(10),
              color: Colors.transparent,
              child: Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            onTap: () {
              print('Register');
            },
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //membuat hilang keyboard ketika klik di sembarang tempat
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _authTitle(),
                  _inputEmail(),
                  _inputPassword(),
                  _forgotPassword(),
                  _inputSubmit(),
                  _textDivider(),
                  _googleSignIn(),
                  _textRegister(),
                ],
              ),
            ),
          )),
    );
  }
}
