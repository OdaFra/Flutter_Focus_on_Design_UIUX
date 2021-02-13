import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottonMenuItem {
  final String iconPath, label;

  BottonMenuItem({@required this.iconPath, @required this.label});
}

class BottomMenu extends StatelessWidget {
  final List<BottonMenuItem> items;

  BottomMenu({@required this.items})
      : assert(items != null && items.length > 0);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: SafeArea(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(items.length, (index) {
                final BottonMenuItem item = items[index];
                return Expanded(
                  child: CupertinoButton(
                      padding: EdgeInsets.zero,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SvgPicture.asset(item.iconPath, width: 30),
                          SizedBox(height: 5),
                          Text(
                            item.label,
                            style: TextStyle(fontSize: 12, color: Colors.black),
                          )
                        ],
                      ),
                      onPressed: () {}),
                );
              })),
        ));
  }
}
