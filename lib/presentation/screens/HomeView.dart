import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:muna_player_app/presentation/screens/HomeController.dart';
import 'package:muna_player_app/presentation/widgets/ActionBarWidget.dart';
import 'package:muna_player_app/presentation/widgets/SearchBarWidget.dart';
import 'package:muna_player_app/presentation/widgets/SongTileWidget.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (homeController) =>
        Scaffold(
          body: NestedScrollView(
              headerSliverBuilder: (_, __) => [
              ],
              body: SafeArea (
                child: Container(
                    child: Column(
                        children: <Widget>[
                          SearchBar(
                            homeController: homeController,
                          ),
                          Obx(() =>
                            Expanded(
                              child:
                                  ListView.builder(
                                    itemCount: homeController.itunesData.value.resultCount == null ? 0 : homeController.itunesData.value.resultCount,
                                    itemBuilder: (context, index) {
                                      return InkWell(
                                        child: SongTileWidget(
                                          thumbnailUrl: homeController.itunesData.value.results[index].artworkUrl100,
                                          songName: homeController.itunesData.value.results[index].trackName,
                                          artist: homeController.itunesData.value.results[index].artistName,
                                          album: homeController.itunesData.value.results[index].collectionName,
                                          isPlaying: homeController.isIndexIsSelected(index),
                                        ),
                                        onTap: () =>
                                          homeController.playTrack(index)
                                      );
                                    },
                                  )
                              )
                          ),
                          Obx(() => (
                              _actionBar(homeController)
                            )
                          ),
                        ]
                    )
                ),
              )
          ),
        )
    );
  }

  Widget _actionBar(HomeController homeController) {
    if (homeController.isPlaying.value) {
      return ActionBar(
        homeController: homeController,
      );
    } else {
      return SizedBox(width: 10);
    }
  }
}