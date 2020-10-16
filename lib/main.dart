import 'package:recording_page/consttants.dart';
import 'package:recording_page/screens/home_screen.dart';
import 'package:recording_page/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recording App',
      theme: ThemeData(
        highlightColor: Colors.transparent,
        scaffoldBackgroundColor: Colors.white,
        textTheme: Theme.of(context).textTheme.apply(
          displayColor: kBlackColor,
        ),
      ),
      home: WelcomeScreen(),

    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/main_page_bg.png"),
            fit: BoxFit.fill,
          ),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "\n   Remote Vitals\n",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.cyan[200], fontSize: 30),
                  ),
                  TextSpan(
                    text: "Symptoms",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 50),
                  ),
                ],
              ),
            ),

            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: RoundedButton(
                text: "Symptom Query",
                fontSize: 18,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return DetailPage();
                      },
                    ),
                  );
                },
              ),
            ),],),
      ),
    );
  }
}