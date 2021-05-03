import 'dart:convert';

import 'package:http/http.dart' as http;

class ItunesService {
  static Future search(String searchKey) {
    return
      http.get(Uri.https('itunes.apple.com', 'search?country=id&media=music&entity=allArtist&limit=50&term=' + searchKey))
          .then((response) =>
      response?.statusCode == 200 ? jsonDecode(response.body) : null)
          .catchError((err) => print(err));
  }
}