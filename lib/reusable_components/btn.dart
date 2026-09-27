import 'package:flutter/material.dart';

enum Btntype { elevated, icon, text }

class Btn extends StatefulWidget {
  final String name;
  final Color? bclr;
  final Widget nextscreen;
  final Color? tclr;
  final double? radious;
  final Btntype type;

  const Btn({
    super.key,
    required this.name,
    this.bclr,
    required this.nextscreen,
    this.tclr,
    this.radious,
    required this.type,
  });

  @override
  State<Btn> createState() => _BtnState();
}

class _BtnState extends State<Btn> {
  @override
  Widget build(BuildContext context) {
    if (widget.type == Btntype.elevated) {
      return ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: widget.bclr,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(widget.radious ?? 0),
          ),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.nextscreen),
          );
        },
        child: Text(
          widget.name,
          style: TextStyle(color: widget.tclr, fontWeight: FontWeight.bold),
        ),
      );
    }

    if (widget.type == Btntype.text) {
      return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => widget.nextscreen),
          );
        },
        child: Text(
          widget.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }
    return SizedBox(height: 2);
  }
}
