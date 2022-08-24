import 'package:flutter/material.dart';
import 'package:mantodistri/src/pages/auth/sign_in_screen.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MantoDistribuidora',
      theme: ThemeData(
    
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Colors.blue.shade500,
      ),
      home: const SignInScreen(),
    );
  }
}
