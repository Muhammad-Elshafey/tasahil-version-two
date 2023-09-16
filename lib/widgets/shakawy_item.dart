import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ShakawyItem extends StatelessWidget {
  ShakawyItem({super.key, required this.controller, required this.hintText,@required this.height });
//-----------------------------------------------------------------------------
  final TextEditingController controller;
  final String hintText;
  double? height;
  //---------------------------------------------------------------------------
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        height: height,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            textAlign: TextAlign.right,
            controller: controller,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              hintText: hintText,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
