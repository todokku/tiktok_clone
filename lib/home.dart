import 'package:flutter/material.dart';

import 'widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'widgets/video_description.dart';

class Home extends StatelessWidget {
  Widget get topSection => Container(
        height: 100.0,
        padding: EdgeInsets.only(
          bottom: 15.0,
        ),
        alignment: Alignment(0.0, 1.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('Following'),
            SizedBox(
              width: 15.0,
            ),
            Text(
              'For You',
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      );

  Widget get middleSection => Expanded(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            VideoDescription(),
            ActionToolbar(),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/color.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          children: <Widget>[
            topSection,
            middleSection,
            BottomToolbar(),
          ],
        ),
      ]),
    );
  }
}
