import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tiktok_clone/tiktok_icons.dart';

class ActionToolbar extends StatelessWidget {
  static const double ActionWidgetSize = 60.0;
  static const double ActionIconSize = 35.0;
  static const double ShareActionIconSize = 25.0;
  static const double ProfileImageSize = 50.0;
  static const double PlusIconSize = 20.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _getFollowAction(),
          _getSocialAction(
            icon: TikTokIcons.heart,
            title: '7.9m',
          ),
          _getSocialAction(
            icon: TikTokIcons.chat_bubble,
            title: '1.4k',
          ),
          _getSocialAction(
            icon: TikTokIcons.reply,
            title: 'Share',
            isShare: true,
          ),
          _getMusicPlayerAction(),
        ],
      ),
    );
  }

  Widget _getSocialAction({String title, IconData icon, bool isShare = false}) {
    return Container(
      margin: EdgeInsets.only(
        top: 10.0,
      ),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: <Widget>[
          Icon(
            icon,
            size: isShare ? ShareActionIconSize : ActionIconSize,
            color: Colors.grey,
          ),
          Padding(
            padding: EdgeInsets.only(
              top: isShare ? 5.0 : 2.0,
            ),
            child: Text(
              title,
              style: TextStyle(
                fontSize: isShare ? 10.0 : 12.0,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _getFollowAction({String pictureURL}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Stack(
        children: <Widget>[
          _getProfilePicture(),
          _getPlusIcon(),
        ],
      ),
    );
  }

  Widget _getPlusIcon() {
    return Positioned(
      bottom: 0,
      left: ((ActionWidgetSize / 2) - (PlusIconSize / 2)),
      child: Container(
        height: PlusIconSize,
        width: PlusIconSize,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 43, 84),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }

  Widget _getProfilePicture() {
    return Positioned(
      left: (ActionWidgetSize / 2) - (ProfileImageSize / 2),
      child: Container(
        padding: EdgeInsets.all(1.0),
        height: ProfileImageSize,
        width: ProfileImageSize,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(ProfileImageSize / 2),
        ),
        child: CachedNetworkImage(
          imageUrl:
              'https://secure.gravatar.com/avatar/4e4e9d3534bef1a8aeca1db6f8f63eb8',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }

  LinearGradient get musicGradient => LinearGradient(
        colors: [
          Colors.grey[800],
          Colors.grey[900],
          Colors.grey[900],
          Colors.grey[800],
        ],
        stops: [0.0, 0.4, 0.6, 1.0],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      );

  Widget _getMusicPlayerAction() {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      width: ActionWidgetSize,
      height: ActionWidgetSize,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(11.0),
            height: ProfileImageSize,
            width: ProfileImageSize,
            decoration: BoxDecoration(
              gradient: musicGradient,
              borderRadius: BorderRadius.circular(ProfileImageSize / 2),
            ),
            child: CachedNetworkImage(
              imageUrl:
                  'https://secure.gravatar.com/avatar/4e4e9d3534bef1a8aeca1db6f8f63eb8',
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ],
      ),
    );
  }
}
