import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({Key key}) : super(key: key);

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
              child: SvgPicture.network(
                'https://www.flaticon.com/svg/vstatic/svg/1518/1518113.svg?token=exp=1613858723~hmac=715ca0ca6a81353a66854dcd3c6f2416',
                width: 30,
              ),
              onPressed: () {}),
          Text(
            'LOGO',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          CupertinoButton(
              onPressed: () {},
              padding: EdgeInsets.all(0),
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.all(15),
                      child: SvgPicture.network(
                        'https://www.flaticon.es/svg/vstatic/svg/876/876221.svg?token=exp=1613858793~hmac=25e67a0dfa40e7de7746752a23df4db9',
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
