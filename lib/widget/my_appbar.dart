import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:disenho_ui_y_ux_flutter/pages/chat_page.dart';

class MyAppBar extends StatelessWidget {
  final String lefticon, righticon;
  final VoidCallback onleftclick, onrightclick;

  MyAppBar(
      {Key key,
      @required this.lefticon,
      @required this.righticon,
      this.onleftclick,
      this.onrightclick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset(
              //'assets/icons/usercamera.svg',
              lefticon,
              width: 30,
            ),
            onPressed: onleftclick,
          ),
          Text(
            'LOGO',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          CupertinoButton(
              onPressed: onrightclick,
              padding: EdgeInsets.all(0),
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: SvgPicture.asset(
                        //'assets/icons/chat.svg',
                        righticon,
                        width: 30,
                      )),
                  Positioned(
                    right: 12,
                    top: 12,
                    child: Container(
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                          color: Colors.red, shape: BoxShape.circle),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
