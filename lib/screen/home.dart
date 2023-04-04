import 'package:flutter/material.dart';
import 'package:flutter_cakery_shop_ui/screen/login.dart';
import 'package:flutter_cakery_shop_ui/screen/register.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('CSC Bakery'),
          titleTextStyle:  TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 23),
          backgroundColor: Colors.amberAccent,
          shadowColor: Colors.brown),
      backgroundColor: Colors.amber,
      drawerScrimColor: Color.fromARGB(255, 17, 19, 19),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/box1.jpeg'),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                      icon: Icon(Icons.login),
                      label: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ))),
              SizedBox(height: 10),
              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return RegisterScreen();
                        }));
                      },
                      icon: Icon(Icons.login),
                      label: Text(
                        'Register',
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
