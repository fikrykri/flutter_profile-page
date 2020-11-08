import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final GestureTapCallback onProcessed;

  CustomButton({@required this.text, @required this.onProcessed});

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 110,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(5),
      ),
      child: FlatButton(
          child: Text(
            widget.text,
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          onPressed: widget.onProcessed),
    );
  }
}
