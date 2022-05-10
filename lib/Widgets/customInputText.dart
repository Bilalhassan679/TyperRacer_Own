import 'package:flutter/material.dart';

class CustomInputText extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomInputText(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
            borderSide: BorderSide(color: Colors.transparent),
          ),
          fillColor: Color(0xffF5F5FA),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    );
  }
}
