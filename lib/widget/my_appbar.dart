import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      color: Color(0xffeeeeee),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CupertinoButton(
              padding: EdgeInsets.all(15),
              child: SvgPicture.network(
                'https://www.flaticon.es/svg/static/icons/svg/685/685655.svg',
                width: 50,
              ),
              onPressed: () {}),
          Text(
            'Logo',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          CupertinoButton(
              padding: EdgeInsets.all(15),
              child: SvgPicture.network(
                'https://www.flaticon.es/svg/vstatic/svg/607/607795.svg?token=exp=1611094101~hmac=7e169f34e7f7669cdd696cd00bb5e897',
                width: 50,
              ),
              onPressed: () {})
        ],
      ),
    );
  }
}
