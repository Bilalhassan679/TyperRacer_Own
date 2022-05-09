import 'package:flutter/material.dart';

class OnTapButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final bool isHome;
  OnTapButton(
      {Key? key, required this.text, required this.isHome, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      onPressed: ontap,
      child: Text(
        text,
        style: TextStyle(fontSize: 24, color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
          minimumSize: Size(!isHome ? width : width / 5, 50)),
    );
  }
}
