import 'package:flutter/material.dart';

enum Btntype { elevated, icon, text }

class Btn extends StatefulWidget {
  final String? name;
  final Color? bclr;
  final Widget nextscreen;
  final Color? tclr;
  final double? radious;
  final Btntype? type;
  final IconData? icontype;

  const Btn({
    super.key,
    this.name,
    this.bclr,
    required this.nextscreen,
    this.tclr,
    this.radious,
    this.type,
    this.icontype,
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
          widget.name ?? "",
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
          widget.name ?? "",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }
    if (widget.type == Btntype.icon) {
      return IconButton(
        onPressed: () {
          print("hello");
        },
        icon: Icon(widget.icontype),
      );
    }
    return SizedBox(height: 2);
  }
}
