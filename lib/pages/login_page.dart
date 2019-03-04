import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode node = new FocusNode();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 30),
            child: Row(
              children: <Widget>[
                Text("Sign ",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                Text("In",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc82323))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 32),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Let’s meat",
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: 50.0, bottom: 15.0, left: 30.0, right: 30.0),
            child: Column(
              children: <Widget>[
                Theme(
                  data: ThemeData(
                    primaryColor: Colors.black
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(node);
                    },
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Theme(
                  data: ThemeData(
                    primaryColor: Colors.black
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: TextFormField(
                      focusNode: node,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15.0))),
                    ),
                  ),
                )
              ],
            ),
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 60, horizontal: 70),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ButtonTheme(
                  minWidth: 100,
                  height: 50,
                  child: RaisedButton(
                    onPressed: () => Navigator.pushNamed(context, 'home'),
                    child: Center(
                      child: Text(
                        "Log In",
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
            ),
          ),
        ],
      ),
    );
  }
}
