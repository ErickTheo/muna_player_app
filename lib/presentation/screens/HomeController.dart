import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:get/get.dart';
import 'package:muna_player_app/domain/entities/ItunesData.dart';
import 'package:muna_player_app/domain/usecases/SearchArtist.dart';

class HomeController extends GetxController {
  final audioPlayer = AssetsAudioPlayer.newPlayer();
  var isPlaying = false.obs;
  var itunesData = ItunesData().obs;
  var currentTrackIndex = -1;

  @override
  void onInit() {
    // search('Westlife');
    super.onInit();
  }

  @override
  void onReady() {
    audioPlayer.stop();
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void search(String searchKey) async {
    stopTrack();
    var data = await SearchArtist.searchByArtist(searchKey);
    if (data != null) {
      itunesData.value = data;
      print('DATA LOADED: ${itunesData.value.resultCount}');
    } else {
      print('DATA IS NULL');
    }
  }

  void playTrack(int trackIndex) {
    print('PLAY: $trackIndex');
    isPlaying.value = true;

    currentTrackIndex = trackIndex;
    audioPlayer.stop();
    audioPlayer.open(
      Audio.network(itunesData.value.results[trackIndex].previewUrl),
      showNotification: false,
      loopMode: LoopMode.single,

    );
    // audioPlayer.playlistAudioFinished.listen((Playing playing){
    //   print('PLAY NEXT: $nextTrackIndex');
    //   playTrack(nextTrackIndex);
    // });
    update();
  }

  bool isIndexIsSelected(int trackIndex) {
    return trackIndex == currentTrackIndex;
  }

  void nextTrack() {
    var nextTrackIndex = currentTrackIndex+1;
    if (nextTrackIndex >= itunesData.value.resultCount) {
      nextTrackIndex = 0;
    }
    playTrack(nextTrackIndex);
  }

  void prevTrack() {
    var nextTrackIndex = currentTrackIndex-1;
    if (nextTrackIndex < 0) {
      nextTrackIndex = itunesData.value.resultCount - 1;
    }
    playTrack(nextTrackIndex);
  }

  void stopTrack() {
    currentTrackIndex = -1;
    isPlaying.value = false;
    audioPlayer.stop();
    update();
  }
}