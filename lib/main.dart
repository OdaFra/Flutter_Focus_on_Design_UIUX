import 'package:disenho_ui_y_ux_flutter/pages/images.dart';
import 'package:disenho_ui_y_ux_flutter/pages/post_page.dart';
import 'package:disenho_ui_y_ux_flutter/pages/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashPage(),
        routes: {
          ImagesPage.routeName: (BuildContext context) => ImagesPage(),
          HomePage.routeName: (_) => HomePage(),
          PostsPage.routeName: (_) => PostsPage(),
        });
  }
}
