import 'dart:async';

import 'package:flutter/material.dart';
import 'package:muna_player_app/core/images.dart';
import 'package:muna_player_app/presentation/widgets/action_bar.dart';
import 'package:muna_player_app/presentation/widgets/search_bar.dart';
import 'package:muna_player_app/presentation/widgets/song_item.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final bool isPlaying = true;

  @override
  void initState() {
    AppImages.precacheAssets(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => [
        ],
        body: SafeArea (
          child: Container(
            child: Column(
                children: <Widget>[
                  SearchBar(),
                  Expanded(
                    child: ListView.builder(
                      // itemCount: 20,
                      itemBuilder: (context, index) {
                        return SongItem(
                          thumbnail: AppImages.songPlaceholder,
                          songName: 'Song name',
                          artist: 'Artist',
                          album: 'Album',
                        );
                      },
                    ),
                  ),
                  _actionBar(),
                ]
            )
          ),
        )
      ),
    );
  }

  Widget _actionBar() {
    if (isPlaying) {
      return ActionBar();
    } else {
      return SizedBox(width: 10);
    }
  }

}