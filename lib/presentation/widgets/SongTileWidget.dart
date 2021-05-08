import 'package:flutter/material.dart';
import 'package:muna_player_app/core/colors.dart';
import 'package:muna_player_app/core/images.dart';

class SongTileWidget extends StatelessWidget {
  const SongTileWidget({
    @required this.thumbnailUrl,
    @required this.songName,
    @required this.artist,
    @required this.album,
    @required this.isPlaying,
  });

  final String thumbnailUrl;
  final String songName;
  final String artist;
  final String album;
  final bool isPlaying;

  Widget _buildContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          songName,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 6),
        Text(
          artist,
          style: TextStyle(
            fontSize: 10,
            color: AppColors.black,
          ),
        ),
        SizedBox(height: 6),
        Text(
          album,
          style: TextStyle(
            fontSize: 10,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 5,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: 50,
            height: 50,
            child: Image.network(thumbnailUrl),
          ),
          SizedBox(width: 10),
          Expanded(child: _buildContent(context)),
          SizedBox(width: 36),
          _playingIcon(),
        ],
      ),
    );
  }

  Widget _playingIcon() {
    if (isPlaying) {
      return Container(
        width: 50,
        height: 50,
        child: Image(image: AppImages.playingIcon),
      );
    } else {
      return SizedBox(width: 10);
    }
  }
}