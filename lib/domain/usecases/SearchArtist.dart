import 'package:muna_player_app/data/services/ItunesApi.dart';
import 'package:muna_player_app/domain/entities/ItunesData.dart';

class SearchArtist {
  static Future<ItunesData> searchByArtist(String searchKey) async {
    return ItunesApi.searchByArtist(searchKey);
  }
}
