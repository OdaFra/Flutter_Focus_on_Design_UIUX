import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color backgraundColor, textColor;
  const MyBtn(
      {Key key,
      @required this.label,
      this.onPressed,
      this.backgraundColor,
      this.textColor})
      : assert(label != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      minSize: 30,
      padding: EdgeInsets.zero,
      onPressed: this.onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Text(
          this.label,
          style: TextStyle(
              color: this.textColor ?? Colors.black,
              fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
            color: this.backgraundColor ?? Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)]),
      ),
    );
  }
}
