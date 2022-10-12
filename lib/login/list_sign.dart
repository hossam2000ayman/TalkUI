import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/login/login.dart';
import 'package:flutter_ui/login/signup.dart';
import 'package:flutter_ui/main.dart';

import 'onboard.dart';

class SignInOptionsScreen extends StatefulWidget {
  const SignInOptionsScreen({Key? key}) : super(key: key);

  @override
  State<SignInOptionsScreen> createState() => _SignInOptionsScreenState();
}

class _SignInOptionsScreenState extends State<SignInOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
          backgroundColor: Colors.white,
          // appBar: AppBar(),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/onboard-img2.PNG'),
                  Text(
                    'Let\'s you in',
                    style: TextStyle(
                        fontSize: 45,
                        fontFamily: 'Roboto',
                        color: Color(int.parse('0xff000000'))),
                  ),
                  VSpace.sm,
                  CustomElevation(
                    height: 50,
                    width: 300,
                    child: MaterialButton(
                        shape: StadiumBorder(),
                        color: Color(int.parse('0xffFFFFFF')),
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInOptionsScreen())),
                        child: Text.rich(
                          TextSpan(children: <InlineSpan>[
                            WidgetSpan(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.facebook,
                                      size: 25, color: Colors.blue),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Continue with Facebook',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )),
                  ),
                  VSpace.sm,
                  CustomElevation(
                    height: 50,
                    width: 300,
                    child: MaterialButton(
                        shape: StadiumBorder(),
                        color: Color(int.parse('0xffFFFFFF')),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInOptionsScreen())),
                        child: Text.rich(
                          TextSpan(children: <InlineSpan>[
                            WidgetSpan(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/google.png',width: 20,),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Continue with Google',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )),
                  ),
                  VSpace.sm,
                  CustomElevation(
                    height: 50,
                    width: 300,
                    child: MaterialButton(
                        shape: StadiumBorder(),
                        color: Color(int.parse('0xffFFFFFF')),
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignInOptionsScreen())),
                        child: Text.rich(
                          TextSpan(children: <InlineSpan>[
                            WidgetSpan(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.facebook,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    'Contine with Apple',
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        )),
                  ),
                  VSpace.sm,
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text.rich(TextSpan(children: <InlineSpan>[
                      WidgetSpan(
                        child: SizedBox(
                          width: 150,
                          child: Divider(
                            indent: 1,
                            endIndent: 3,
                            color: Color.fromARGB(255, 206, 200, 200),
                          ),
                        ),
                      ),
                      WidgetSpan(
                        child: Text(
                          'or',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      WidgetSpan(
                        child: SizedBox(
                          width: 150,
                          child: Divider(
                            indent: 1,
                            endIndent: 3,
                            color: Color.fromARGB(255, 206, 200, 200),
                          ),
                        ),
                      ),
                    ])),
                  ),
                  VSpace.sm,
                  CustomElevation(
                    height: 50,
                    width: 300,
                    child: MaterialButton(
                      shape: StadiumBorder(),
                      color: Color(int.parse('0xff9610FF')),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen())),
                      child: Text(
                        'Sign in with password',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  VSpace.sm,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text.rich(TextSpan(
                          text: 'Don\'t have as account? ',
                          style: TextStyle(fontSize: 20),
                          children: [

                          ])),
                            TextButton(onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen())), child: Text('Sign up'))
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
