import 'package:flutter/material.dart';

class CustomText extends StatefulWidget {
  final int numbers;
  final String text;

  CustomText({@required this.numbers, @required this.text});
  @override
  _CustomTextState createState() => _CustomTextState();
}

class _CustomTextState extends State<CustomText> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.numbers.toString(),
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        Text(
          widget.text,
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
