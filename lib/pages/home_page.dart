import 'package:disenho_ui_y_ux_flutter/pages/chat_page.dart';
import 'package:disenho_ui_y_ux_flutter/pages/images.dart';
import 'package:disenho_ui_y_ux_flutter/pages/post_page.dart';
import 'package:disenho_ui_y_ux_flutter/widget/my_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widget/bottom_menu.dart';
import '../widget/avatar.dart';
import '../widget/cronometro.dart';
import '../widget/my_appbar.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'Home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isEnabled = false;
  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomMenu(
        items: [
          BottonMenuItem(iconPath: 'assets/icons/home.svg', label: 'Inicio'),
          BottonMenuItem(
              iconPath: 'assets/icons/historial.svg', label: 'Historial'),
          BottonMenuItem(iconPath: 'assets/icons/compra.svg', label: 'Ofertas'),
          BottonMenuItem(iconPath: 'assets/icons/menu.svg', label: 'Más'),
        ],
      ),
      body: SafeArea(
          top: true,
          bottom: true,
          child: Container(
              color: Colors.white,
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  //Appbar
                  MyAppBar(
                    lefticon: 'assets/icons/usercamera.svg',
                    righticon: 'assets/icons/chat.svg',
                    onrightclick: () {
                      final route = MaterialPageRoute(
                          builder: (BuildContext _) => ChatPage(
                                username: 'Odafra',
                              ));
                      Navigator.push(context, route);
                    },
                    onleftclick: () {
                      Navigator.pushNamed(context, ImagesPage.routeName,
                          arguments: ImagesPageargs(
                              username: 'OdaFra', isActive: true));
                    },
                  ),
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Avatar(),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Bienvenido'),
                      Text(
                        'OdaFra',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      // _isEnabled == true
                      //     ? Cronometer(
                      //         iniTime: 00,
                      //         fontSize: _fontSize,
                      //       )
                      //     : Container(),
                      SizedBox(
                        height: 20,
                      ),
                      // CupertinoButton(
                      //     color: Colors.blue,
                      //     child: Text('Enabled: $_isEnabled'),
                      //     onPressed: () {
                      //       setState(() {
                      //         _isEnabled = !_isEnabled;
                      //       });
                      //     }),
                      // SizedBox(
                      //   height: 20,
                      // ),
                      // CupertinoButton(
                      //     color: Colors.green,
                      //     child: Text('Ir a chat'),
                      //     onPressed: () {})
                      MyBtn(
                        label: 'Mi Posts',
                        onPressed: () {
                          Navigator.pushNamed(context, PostsPage.routeName);
                        },
                      )
                    ],
                  )),
                ],
              ))),
    );
  }
}
