import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lms/screens/Dashboard.dart';
import 'package:lms/screens/StdDashboard.dart';

import '../theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: GestureDetector(
                onTap: () {
                  FocusScope.of(context).requestFocus(FocusNode());
                },
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: new DecorationImage(
                        image: new AssetImage(
                          "assets/images/Background.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 150.0),
                          child: Container(
                              width: 330,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Card(
                                  elevation: 5,
                                  shadowColor: Colors.indigo,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 35, left: 30, right: 30),
                                        child: Container(
                                          width: 290,
                                          height: 50,
                                          child: TextField(
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                labelText: 'Email',
                                                labelStyle: TextStyle(
                                                    color: Colors.black54),
                                                hintText:
                                                    'Enter email or username',
                                              )),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30, right: 30),
                                        child: Container(
                                          width: 290,
                                          height: 50,
                                          child: TextField(
                                              obscureText: _showPassword,
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                              decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: TextStyle(
                                                      color: Colors.black54),
                                                  hintText: 'Enter Password',
                                                  suffixIcon: IconButton(
                                                    icon: Icon(
                                                        Icons.remove_red_eye,
                                                        color:
                                                            Colors.grey[600]),
                                                    onPressed: () {
                                                      setState(() => this
                                                              ._showPassword =
                                                          !this._showPassword);
                                                    },
                                                  ))),
                                        ),
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(top: 70.0),
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15.0)),
                                          gradient: LinearGradient(
                                              colors: <Color>[
                                                CustomTheme.loginGradientEnd,
                                                CustomTheme.loginGradientStart
                                              ],
                                              begin: FractionalOffset(0.2, 0.2),
                                              end: FractionalOffset(1.0, 1.0),
                                              stops: <double>[0.0, 1.0],
                                              tileMode: TileMode.clamp),
                                        ),
                                        child: MaterialButton(
                                          splashColor:
                                              CustomTheme.loginGradientEnd,
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 7.0,
                                                horizontal: 70.0),
                                            child: Text(
                                              'Log In',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          ),
                                          onPressed: () {
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (BuildContext
                                                            context) =>
                                                        Dashboard()));
                                          },
                                        ),
                                      ),
                                      FlatButton(
                                          onPressed: null,
                                          child: Text('Forgot Password?'))
                                    ],
                                  ),
                                ),
                              )),
                        ),
                      ],
                    )))));
  }
}
