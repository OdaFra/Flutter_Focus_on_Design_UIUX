import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:disenho_ui_y_ux_flutter/widget/circle_container.dart';
import 'dart:async';
import 'package:after_layout/after_layout.dart';

class Cronometer extends StatefulWidget {
  final double iniTime, fontSize;

  const Cronometer({Key key, this.iniTime = 0, this.fontSize})
      : super(key: key);

  @override
  CronometerState createState() => CronometerState();
}

class CronometerState extends State<Cronometer> with AfterLayoutMixin {
  double _time;

  Timer _timer;

  @override
  void initState() {
    super.initState();
    _time = widget.iniTime;
  }

  @override
  void dispose() {
    //Cancelar Timer
    print('Dispose');
    _stop();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(Cronometer oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('old fontSize ${oldWidget.fontSize}');
    print('old fontSize ${widget.fontSize}');
  }

  @override
  void afterFirstLayout(BuildContext context) {
    // showDialog(
    //     context: this.context,
    //     builder: (BuildContext) {
    //       return AlertDialog(
    //         title: Text('afterFirstLayout'),
    //       );
    //     });
  }

  void _start() {
    _timer = Timer.periodic(Duration(seconds: 1), (Timer _) {
      setState(() {
        _time = _time + 1;
      });
    });
  }

  void _stop() {
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: <Widget>[
            Text(
              _time.toString(),
              style: TextStyle(fontSize: widget.fontSize),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CupertinoButton(
                    child: CircleContainer(
                        child: Icon(Icons.play_arrow), size: 50),
                    onPressed: _start),
                CupertinoButton(
                    child: CircleContainer(child: Icon(Icons.stop), size: 50),
                    onPressed: _stop),
              ],
            )
          ],
        ));
  }
}
