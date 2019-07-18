import 'package:flutter/material.dart';

class LoginWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final formKey = new GlobalKey<FormState>();

  String _email;

  String _password;

  bool validateAndSave() {
    final form = formKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }

  void validateAndSubmit() {
    if (validateAndSave()) {
      Navigator.pushNamed(context, "/home");
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.green,
        body: new Container(
            padding: const EdgeInsets.all(20.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  "images/sales.png",
                  height: 150.0,
                  width: 150.0,
                ),
                new Form(
                  key: formKey,
                  child: new Column(
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            labelText: "Email", icon: new Icon(Icons.email)),
                        validator: (value) =>
                            value.isEmpty ? "Email can't be empty" : null,
                        onSaved: (value) => _email = value,
                      ),
                      new TextFormField(
                          decoration: new InputDecoration(
                              labelText: "Password",
                              icon: new Icon(Icons.vpn_key)),
                          obscureText: true,
                          validator: (value) =>
                              value.isEmpty ? "Password can't be empty" : null,
                          onSaved: (value) => _password = value),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new Text("Don't have an account? Signup"),
                          new RaisedButton(
                            child: new Text(
                              "Login",
                              style: new TextStyle(color: Colors.green),
                            ),
                            onPressed: validateAndSubmit,
                            elevation: 2.0,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            )));
  }
}
