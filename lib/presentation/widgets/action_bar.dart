import 'package:flutter/material.dart';
import 'package:muna_player_app/core/images.dart';

class ActionBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 48),
            Flexible(
                flex: 1,
                child: IconButton(
                  icon: Image(image: AppImages.prevIcon),
                  onPressed: () {},
                ),
            ),
            SizedBox(width: 24),
            Flexible(
                flex: 1,
                child: IconButton(
                  icon: Image(image: AppImages.pauseIcon),
                  onPressed: () {},
                ),
            ),
            SizedBox(width: 24),
            Flexible(
                flex: 1,
                child: IconButton(
                  icon: Image(image: AppImages.nextIcon),
                  onPressed: () {},
                ),
            ),
            SizedBox(width: 48),
          ]
      )
    );
  }
}