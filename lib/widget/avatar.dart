import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
        width: 120,
        child: Stack(
          children: <Widget>[
            SvgPicture.network(
              'https://www.flaticon.es/svg/static/icons/svg/599/599305.svg',
            ),
            Positioned(
              child: CircleContainer(
                child: Icon(Icons.edit),
                size: 33,
              ),
              right: 0,
              top: 0,
            )
          ],
        ));
  }
}
