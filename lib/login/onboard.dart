import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_ui/login/list_sign.dart';
import 'package:flutter_ui/main.dart';

class OnBoardUIScreen extends StatelessWidget {
  const OnBoardUIScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        // appBar: AppBar(title: Text("GeeksForGeeks")),
        body: SingleChildScrollView(
          child: Center(
              child: Column(
            children: [
              VSpace.sm,
              Image.asset('assets/onboard-img1.PNG'),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text.rich(
                  TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                          text: 'Listen to the best podcasts every day with '),
                      WidgetSpan(
                          alignment: PlaceholderAlignment.middle,
                          child: Text('WeTalk',
                              style: TextStyle(
                                  fontFamily: 'Roboto-semi',
                                  fontSize: 45,
                                  color: Colors.purple))),
                      TextSpan(text: ' downloads on both stores'),
                    ],
                  ),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40),
                ),
              ),
              VSpace.l,
              CustomElevation(
                height: 50,
                width:300,
                child: MaterialButton(
                  shape: StadiumBorder(),
                  color:  Color(int.parse('0xff9610FF')) ,
                  onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => SignInOptionsScreen())),
                  child: Text('Next',style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}

class CustomElevation extends StatelessWidget {
  final Widget child;
  final double height;
  final double width;

  CustomElevation({required this.child, required this.height,required this.width})
      : assert(child != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.height,
      width: this.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(this.height / 2)),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            blurRadius: height / 5,
            offset: Offset(0, height / 5),
          ),
        ],
      ),
      child: this.child,
    );
  }
}
