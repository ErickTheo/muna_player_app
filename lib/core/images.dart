import 'package:flutter/material.dart';

const String _imagePath = 'assets/images';

class _Image extends AssetImage {
  const _Image(String fileName) : super('$_imagePath/$fileName');
}

class AppImages {
  static const songPlaceholder = _Image('itunes-thumbnail.png');
  static const playingIcon = _Image('playing-icon.png');
  static const playIcon = _Image('play-icon.png');
  static const pauseIcon = _Image('pause-icon.png');
  static const nextIcon = _Image('next-icon.png');
  static const prevIcon = _Image('prev-icon.png');

  static Future precacheAssets(BuildContext context) async {
    await precacheImage(songPlaceholder, context);
    await precacheImage(playingIcon, context);
    await precacheImage(playIcon, context);
    await precacheImage(pauseIcon, context);
    await precacheImage(nextIcon, context);
    await precacheImage(prevIcon, context);
  }
}