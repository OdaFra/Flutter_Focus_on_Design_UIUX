import 'package:disenho_ui_y_ux_flutter/widget/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class PostsPage extends StatefulWidget {
  static final routeName = 'Posts';

  @override
  _PostsPageState createState() => _PostsPageState();
}

class _PostsPageState extends State<PostsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: <Widget>[
            MyAppBar(
              lefticon: 'assets/icons/hacia-atras.svg',
              righticon: 'assets/icons/chat.svg',
              onleftclick: () => Navigator.pop(context),
            )
          ],
        ),
      )),
    );
  }
}
