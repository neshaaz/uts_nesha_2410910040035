import 'package:flutter/material.dart';
import 'uts/login.dart';
import 'uts/daftar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/" :(context)=>LoginPage(),
        "/daftar":(context)=>DaftarPage()
      },
      initialRoute: "/", 
    );
  }
}