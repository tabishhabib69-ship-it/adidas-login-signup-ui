import 'package:flutter/material.dart';

class Checkboxx extends StatefulWidget {
  const Checkboxx({super.key});

  @override
  State<Checkboxx> createState() => _CheckboxxState();
}

class _CheckboxxState extends State<Checkboxx> {
  bool remeberMe = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: remeberMe,
      onChanged: (value) {
        setState(() {
          remeberMe = value!;
        });
      },
    );
  }
}
