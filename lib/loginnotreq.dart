import 'package:flutter/material.dart';
import 'package:postreq_flutter/home_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logno extends StatelessWidget {
  const Logno({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('Do you want to LogOut ?'),
                      content: const Text('AlertDialog description'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {},
                          child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () async {
                            SharedPreferences share =
                                await SharedPreferences.getInstance();
                            share.clear();
                           // either you can use false dv

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),
                            );
                          },
                          child: const Text('Yes'),
                        ),
                      ],
                    ),
                  );
                },
                icon: Icon(Icons.logout))
          ],
          title: Center(child: Text('Welcome')),
        ),
        body: Column(
          children: const [
            Text(
              'WELCOME',
              style: TextStyle(fontSize: 50),
            ),
          ],
        ));
  }
}
