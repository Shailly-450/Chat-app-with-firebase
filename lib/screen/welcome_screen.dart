import 'package:flutter/material.dart';
import 'package:uno_chat/screen/login_screen.dart';
import 'package:uno_chat/screen/registration_screen.dart';
import 'package:uno_chat/screen/chat_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with SingleTickerProviderStateMixin{
  late AnimationController controller;
  late Animation animation;

  @override
  void initState(){
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 3),
      vsync: this,
    );
    animation =   ColorTween(begin: Colors.red, end: Colors.black).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: CircleAvatar(
                        child: Image.asset('images/logo2.jpg')),
                    height: 60.0,
                  ),
                ),
                AnimatedTextKit(
                  animatedTexts:[ TypewriterAnimatedText('Flash Chat',
                    textStyle: TextStyle(
                      fontSize: 50.0,
                    ),),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            // ),
            // ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login_screen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
// //Go to registration screen.
                    Navigator.pushNamed(context, 'registration_screen');
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
