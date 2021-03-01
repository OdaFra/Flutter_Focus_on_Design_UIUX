import 'package:disenho_ui_y_ux_flutter/widget/my_appbar.dart';
import 'package:flutter/material.dart';

class ImagesPageargs {
  final String username;
  final bool isActive;

  ImagesPageargs({@required this.username, @required this.isActive});
}

class ImagesPage extends StatefulWidget {
  static final routeName = 'images';
  @override
  _ImagesPageState createState() => _ImagesPageState();
}

class _ImagesPageState extends State<ImagesPage> {
  @override
  Widget build(BuildContext context) {
    final ImagesPageargs args = ModalRoute.of(context).settings.arguments;

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
            onrightclick: () {},
            onleftclick: () => Navigator.pop(context),
          ),
          Expanded(
              child: Center(
                  child: Text(
                      "${args.username} está activada? ${args.isActive} ")))
        ],
      ),
    )));
  }
}
