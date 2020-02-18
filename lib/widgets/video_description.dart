import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            '@ta93abe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '人生かけて解散してみた。',
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.music_note,
                size: 15.0,
                color: Colors.white,
              ),
              Text(
                'where GO - 解散理由 - song',
                style: TextStyle(
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
