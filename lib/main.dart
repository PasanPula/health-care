import 'package:flutter/material.dart';
import 'package:healthcare/screens/home.dart';
import 'package:healthcare/screens/info.dart';
import 'package:healthcare/screens/login.dart';
import 'package:healthcare/screens/register.dart';
import 'package:healthcare/screens/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(brightness: Brightness.light),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/start':(context) => const Start(),
        '/login':(context) => const Login(),
        '/register':(context) => const Register(),
        '/info':(context) => const Info(),
  
      },
    );
  }
}



