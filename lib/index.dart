import 'package:ecommerce/screens/splash_screen.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const new({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Splash());
  }
}
