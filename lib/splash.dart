import 'package:flutter/material.dart';
import 'package:postreq_flutter/home_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginnotreq.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    checkLogin();

  }

  checkLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool? islog = pref.getBool('isLogin');
    if (islog ?? false) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Logno()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login or not'),
      ),
      body: Column(
        children: const [
          Text(
            'Splash screen',
            style: TextStyle(fontSize: 50),
          )
        ],
      ),
    );
  }
}
