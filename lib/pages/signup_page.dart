import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  FocusNode passwordNode = new FocusNode();
  FocusNode emailNode = new FocusNode();

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
                Text("Up",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffc82323))),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Experience the great food",
                  style: TextStyle(color: Colors.grey),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60, left: 50, right: 50, bottom: 30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Name"),
                  onFieldSubmitted: (String value) {
                    FocusScope.of(context).requestFocus(emailNode);
                  },
                  textInputAction: TextInputAction.next,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: TextFormField(
                    focusNode: emailNode,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(labelText: "Email"),
                    onFieldSubmitted: (String value) {
                      FocusScope.of(context).requestFocus(passwordNode);
                    },
                    textInputAction: TextInputAction.next,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: TextFormField(
                    focusNode: passwordNode,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 70),
            child: ButtonTheme(
              minWidth: 100,
              height: 50,
              child: RaisedButton(
                onPressed: () => Navigator.pushNamed(context, 'home'),
                child: Center(
                  child: Text(
                    "Sign Up",
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
        ],
      ),
    );
  }
}
