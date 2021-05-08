import 'package:http/http.dart' as http;
import 'package:muna_player_app/domain/entities/ItunesData.dart';

class ItunesApi {
  static Future<ItunesData> searchByArtist(String searchKey) async {
    var queryParameters = {
      'entity': 'musicTrack',
      'media': 'music',
      'attribute': 'artistTerm',
      'term': searchKey,
    };
    var url = Uri.https('itunes.apple.com', '/search', queryParameters);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return itunesTrackFromJson(jsonString);
    } else {
      return null;
    }
  }
}
