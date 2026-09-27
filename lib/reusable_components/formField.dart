import 'package:flutter/material.dart';

class CForm extends StatefulWidget {
  final String labeltext;
  final String? hinttext;
  final IconData? prefixicon;
  const CForm({
    super.key,
    required this.labeltext,
    this.hinttext,
    this.prefixicon,
  });

  @override
  State<CForm> createState() => _CFormState();
}

class _CFormState extends State<CForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: widget.labeltext,
        hintText: widget.hinttext,
        prefixIcon: Icon(widget.prefixicon),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
