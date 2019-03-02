import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/image.png',
            height: 290,
          ),
          Center(
              child: Image.asset(
            'assets/fooder.png',
            height: 30,
          )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Text(
              "Perfect food is born of perfect order",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 70),
            child: ButtonTheme(
              minWidth: 100,
              height: 50,
              child: RaisedButton(
                onPressed: () => {},
                child: Center(
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                highlightElevation: 4,
                color: Color(0xffec407a),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
              ),
            ),
          ),
          Text(
            "or",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: RaisedButton(
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: Image.asset("assets/facebook_logo.png", height: 25,)),
                  color: Color(0xff5c6bc0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7)
                  ),
                  onPressed: () => {},
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                child: RaisedButton(
                  child: Padding( padding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                      child: Image.asset("assets/google_logo.png", height: 25,)),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7)
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have any account? "),

                Text("Create Here", style: TextStyle(color: Colors.blue),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
