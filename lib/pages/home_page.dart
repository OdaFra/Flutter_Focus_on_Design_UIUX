import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widget/circle_container.dart';
import '../widget/bottom_menu.dart';
import '../widget/avatar.dart';
import '../widget/cronometro.dart';
import 'package:disenho_ui_y_ux_flutter/main.dart';
import 'package:disenho_ui_y_ux_flutter/widget/my_appbar.dart';

class HomePage extends StatefulWidget {
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
      // appBar: AppBar(
      //   brightness: Brightness.light,
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text(
      //     'Logo',
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   iconTheme: IconThemeData(color: Colors.blue),
      //   leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
      //   actions: <Widget>[
      //     IconButton(icon: Icon(Icons.send), onPressed: () {}),
      //     IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
      //   ],
      // ),
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
                  MyAppBar(),
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
                      _isEnabled == true
                          ? Cronometer(
                              iniTime: 00,
                              fontSize: _fontSize,
                            )
                          : Container(),
                      SizedBox(
                        height: 10,
                      ),
                      CupertinoButton(
                          color: Colors.blue,
                          child: Text('Enabled: $_isEnabled'),
                          onPressed: () {
                            setState(() {
                              _isEnabled = !_isEnabled;
                            });
                          }),
                      SizedBox(
                        height: 20,
                      ),
                      CupertinoButton(
                          color: Colors.green,
                          child: Text('New fontSize'),
                          onPressed: () {
                            setState(() {
                              _fontSize++;
                            });
                          })
                    ],
                  )),
                ],
              ))),
    );
  }
}
