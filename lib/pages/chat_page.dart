import 'package:disenho_ui_y_ux_flutter/widget/my_appbar.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  final String username;

  const ChatPage({Key key, @required this.username})
      : assert(username != null),
        super(key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
          ),
          Expanded(child: Center(child: Text(widget.username)))
        ],
      ),
    )));
  }
}
