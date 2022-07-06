import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 120.0,bottom: 120.0,right: 80.0,left: 80.0),
        alignment: Alignment.center,
        color: Colors.brown,
        padding: EdgeInsets.only(top:10,left:20,),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: (Text("User Id",textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 40,
                      fontFamily: 'Mansalva',
                      color: Colors.red
                    ),
                    )),)
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(child: Text("Password",textDirection: TextDirection.ltr,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Mansalva',
                  fontSize: 40,
                  color: Colors.white
                ),))
              ],
            ),
            Login()
          ],
        ),
      ),
    );
  }
}
class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 150,
      child: RaisedButton(
        color: Colors.deepOrange,
        child: Text('Login',style: TextStyle(
          color: Colors.white
        ),),
        elevation: 9.0,
        onPressed: (){
          LoginPage(context);
        },
      ),
    );
  }
}
void LoginPage(BuildContext context) {
  var popup=AlertDialog(
    title: Text("Login Sucssesfull"),
    content: Text("Login Enjoy app"),
  );
showDialog(context: context,
    builder: (BuildContext)=>popup);
}