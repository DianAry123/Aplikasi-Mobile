import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_uts/login2.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}


var nama = new TextEditingController();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: FractionalOffset.topRight,
          end: FractionalOffset.bottomLeft,
          colors: [
            Colors.blueAccent,
            Colors.blue,
            Colors.lightBlueAccent,
            Colors.lightBlue
          ],
        )),
      ),
      Container(
          child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 40.0,
                vertical: 120.0,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Nickname',
                          ),
                          SizedBox(height: 5.0),
                          Container(
                              padding: new EdgeInsets.all(1.0),
                              child: new Column(children: <Widget>[
                                new TextField(
                                  controller: nama,
                                  decoration: new InputDecoration(
                                    icon: Icon(Icons.email),
                                    hintText: "Enter your Nickname",
                                    border: new OutlineInputBorder(
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5.0),
                              ]))
                        ]),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password',
                          ),
                          SizedBox(height: 10.0),
                          Container(
                              padding: new EdgeInsets.all(1.0),
                              child: new Column(children: <Widget>[
                                new TextField(
                                    decoration: new InputDecoration(
                                        icon: Icon(Icons.lock),
                                        hintText: "Enter your Password",
                                        border: new OutlineInputBorder(
                                          borderRadius:
                                              new BorderRadius.circular(10.0),
                                        ))),
                              ])),
                          Container(
                            alignment: Alignment.centerRight,
                            child: FlatButton(
                              onPressed: () =>
                                  print('Forgot Password Button Pressed'),
                              padding: EdgeInsets.only(right: 0.0),
                              child: Text(
                                'Forgot Password?',
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(vertical: 10.0),
                            child: RaisedButton(
                              child: Text('LOGIN'),
                              onPressed: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(
                                  builder: (context) {
                                    return Window( namaLengkap :nama.text);
                                  },
                                ));
                              },
                            ),
                          )
                        ]),
                    Container(
                      alignment: Alignment.center,
                      child: new Column(children: <Widget>[
                        Text(
                          'Happy Reading!',
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          '#JustAtHome',
                        )
                      ]),
                    )
                  ])))
    ]));
  }
}
