import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:final_proj/MenuBar/MenuBarMain.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/a.gif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: FadeAnimatedTextKit(
                  duration: Duration(milliseconds: 10000),
                  isRepeatingAnimation: false,
                  totalRepeatCount: 1,
                  text: ["App Name"],
                  alignment: AlignmentDirectional.centerStart,
                  textAlign: TextAlign.center,
                  textStyle: GoogleFonts.courgette(
                    color: Colors.black,
                    fontSize: 40,
                  ),
                ),
              ),
              RaisedButton(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.redAccent,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => new MenuBar()));
                },
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                    letterSpacing: 3,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
