import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/login/login.dart';
import 'package:flutter_ui/login/onboard.dart';
import 'package:flutter_ui/main.dart';

import 'list_sign.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Flutter Form Demo';
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        // title: Text(appTitle),
        // ),
        body: SignUpFormScreen(),
      ),
    );
  }
}

class SignUpFormScreen extends StatefulWidget {
  const SignUpFormScreen({Key? key}) : super(key: key);

  @override
  State<SignUpFormScreen> createState() => _SignUpFormScreenState();
}

class _SignUpFormScreenState extends State<SignUpFormScreen> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool? password = false;
  bool? username = false;
  bool? selctedValue = true;
  bool? show = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                VSpace.xl,
                VSpace.xl,
                Image.asset(
                  'assets/logo.PNG',
                  width: 150,
                ),
                VSpace.sm,
                Text(
                  'Create Your Account',
                  style: TextStyle(fontSize: 40),
                ),
                VSpace.xl,
                Stack(
                  alignment: const Alignment(0, 0),
                  children: <Widget>[
                    TextField(
                      onTap: () {
                        setState(() {
                          password = false;
                          username = true;
                        });
                      },
                      // obscureText: selctedValue!,
                      autofocus: false,
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'email',
                        filled: true,
                        fillColor: username == true
                            ? Color(int.parse('0xffF7ECFF'))
                            : Color.fromARGB(255, 214, 212, 212),
                        contentPadding: const EdgeInsets.only(
                            left: 35.0, bottom: 6.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: username == true
                                ? Color(int.parse('0xffC580F8'))
                                : Color.fromARGB(255, 214, 212, 212),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 5,
                        // width: 25,
                        // height: 25,
                        child: username == true
                            ? Icon(
                                Icons.mail,
                                color: Color(int.parse('0xff9610FF')),
                              )
                            : Icon(
                                Icons.mail,
                                color: Colors.grey,
                              )),
                  ],
                ),
                VSpace.sm,
                Stack(
                  alignment: const Alignment(0, 0),
                  children: <Widget>[
                    TextField(
                      onTap: () {
                        setState(() {
                          password = true;
                          username = false;
                        });
                      },
                      obscureText: show!,
                      autofocus: false,
                      style: TextStyle(fontSize: 15.0, color: Colors.black),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                        filled: true,
                        fillColor: password == true
                            ? Color(int.parse('0xffF7ECFF'))
                            : Color.fromARGB(255, 214, 212, 212),
                        contentPadding: const EdgeInsets.only(
                            left: 35.0, bottom: 6.0, top: 8.0),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: password == true
                                ? Color(int.parse('0xffC580F8'))
                                : Color.fromARGB(255, 214, 212, 212),
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 255, 255, 255)),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
                    Positioned(
                        left: 5,
                        // width: 25,
                        // height: 25,
                        child: password == true
                            ? Icon(
                                Icons.lock,
                                color: Color(int.parse('0xff9610FF')),
                              )
                            : Icon(
                                Icons.lock,
                                color: Colors.grey,
                              )),
                    Positioned(
                        right: 2,
                        child: Container(
                          // width: 65,
                          // height: 30,
                          child: IconButton(
                            icon: password == true
                                ? Icon(
                                    show == false
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Color(int.parse('0xff9610FF')),
                                  )
                                : Icon(
                                    show == false
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.grey),
                            onPressed: () {
                              setState(() {
                                show = !show!;
                              });
                            },
                          ),
                        ))
                  ],
                ),
                VSpace.sm,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Checkbox(
                      splashRadius: 20,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4)),
                      checkColor: Colors.white,
                      fillColor:
                          MaterialStateProperty.resolveWith<Color>((states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Colors.purple.withOpacity(.32);
                        }
                        return Colors.purple;
                      }),
                      value: selctedValue,
                      onChanged: (bool? newValue) {
                        setState(() {
                          password = false;
                          username = false;

                          newValue == true ? false : true;
                          selctedValue = newValue!;
                        });
                      },
                    ),
                    Text('Remember me')
                  ],
                ),
                // VSpace.sm,
                Container(
                  width: 300,
                  child: TextButton(
                      child: Text("Sign up".toUpperCase(),
                          style: TextStyle(fontSize: 14)),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(15)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(int.parse('0xff9610FF'))),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0),
                                  side: BorderSide(
                                      color: Color(int.parse('0xff9610FB')))))),
                      onPressed: () => setState(() {
                        Navigator.push(context,MaterialPageRoute(builder: (context) => LoginScreen()));
                            password = false;
                            username = false;
                          })),
                ),
                // VSpace.sm,
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text.rich(TextSpan(children: <InlineSpan>[
                    WidgetSpan(
                      child: SizedBox(
                        width: 80,
                        child: Divider(
                          indent: 1,
                          endIndent: 3,
                          color: Color.fromARGB(255, 206, 200, 200),
                        ),
                      ),
                    ),
                    WidgetSpan(child: HSpace.sm),
                    WidgetSpan(
                      child: Text(
                        'or continue with',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    WidgetSpan(child: HSpace.sm),
                    WidgetSpan(
                      child: SizedBox(
                        width: 80,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 75,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 239, 236, 236)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                          onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen())),
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                          )),
                    ),
                    Container(
                      width: 75,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 239, 236, 236)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                          onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen())),
                          child: Image.asset(
                            'assets/google.png',
                            width: 20,
                          )),
                    ),
                    Container(
                      width: 75,
                      // color: Colors.red,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Color.fromARGB(255, 239, 236, 236)),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                          onPressed: () => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen())),
                          child: Icon(
                            Icons.apple,
                            color: Colors.black,
                          )),
                    )
                  ],
                ),
                VSpace.sm,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text.rich(TextSpan(
                        text: 'Already have as account? ',
                        style: TextStyle(fontSize: 20),
                        children: [])),
                    TextButton(
                        onPressed: () => Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen())),
                        child: Text('Sign in'))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
