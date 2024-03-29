// To parse this JSON data, do
//
//     final itunesTrack = itunesTrackFromJson(jsonString);

import 'dart:convert';

ItunesData itunesTrackFromJson(String str) => ItunesData.fromJson(json.decode(str));

String itunesTrackToJson(ItunesData data) => json.encode(data.toJson());

class ItunesData {
  ItunesData({
    this.resultCount,
    this.results,
  });

  int resultCount;
  List<Result> results;

  factory ItunesData.fromJson(Map<String, dynamic> json) => ItunesData(
    resultCount: json["resultCount"] == null ? null : json["resultCount"],
    results: json["results"] == null ? null : List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "resultCount": resultCount == null ? null : resultCount,
    "results": results == null ? null : List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Result {
  Result({
    this.wrapperType,
    this.kind,
    this.artistId,
    this.collectionId,
    this.trackId,
    this.artistName,
    this.collectionName,
    this.trackName,
    this.collectionCensoredName,
    this.trackCensoredName,
    this.collectionArtistId,
    this.collectionArtistName,
    this.artistViewUrl,
    this.collectionViewUrl,
    this.trackViewUrl,
    this.previewUrl,
    this.artworkUrl30,
    this.artworkUrl60,
    this.artworkUrl100,
    this.collectionPrice,
    this.trackPrice,
    this.releaseDate,
    this.collectionExplicitness,
    this.trackExplicitness,
    this.discCount,
    this.discNumber,
    this.trackCount,
    this.trackNumber,
    this.trackTimeMillis,
    this.country,
    this.currency,
    this.primaryGenreName,
    this.isStreamable,
    this.contentAdvisoryRating,
    this.collectionArtistViewUrl,
  });

  WrapperType wrapperType;
  Kind kind;
  int artistId;
  int collectionId;
  int trackId;
  String artistName;
  String collectionName;
  String trackName;
  String collectionCensoredName;
  String trackCensoredName;
  int collectionArtistId;
  String collectionArtistName;
  String artistViewUrl;
  String collectionViewUrl;
  String trackViewUrl;
  String previewUrl;
  String artworkUrl30;
  String artworkUrl60;
  String artworkUrl100;
  double collectionPrice;
  double trackPrice;
  DateTime releaseDate;
  Explicitness collectionExplicitness;
  Explicitness trackExplicitness;
  int discCount;
  int discNumber;
  int trackCount;
  int trackNumber;
  int trackTimeMillis;
  Country country;
  Currency currency;
  PrimaryGenreName primaryGenreName;
  bool isStreamable;
  ContentAdvisoryRating contentAdvisoryRating;
  String collectionArtistViewUrl;

  factory Result.fromJson(Map<String, dynamic> json) => Result(
    wrapperType: json["wrapperType"] == null ? null : wrapperTypeValues.map[json["wrapperType"]],
    kind: json["kind"] == null ? null : kindValues.map[json["kind"]],
    artistId: json["artistId"] == null ? null : json["artistId"],
    collectionId: json["collectionId"] == null ? null : json["collectionId"],
    trackId: json["trackId"] == null ? null : json["trackId"],
    artistName: json["artistName"] == null ? null : json["artistName"],
    collectionName: json["collectionName"] == null ? null : json["collectionName"],
    trackName: json["trackName"] == null ? null : json["trackName"],
    collectionCensoredName: json["collectionCensoredName"] == null ? null : json["collectionCensoredName"],
    trackCensoredName: json["trackCensoredName"] == null ? null : json["trackCensoredName"],
    collectionArtistId: json["collectionArtistId"] == null ? null : json["collectionArtistId"],
    collectionArtistName: json["collectionArtistName"] == null ? null : json["collectionArtistName"],
    artistViewUrl: json["artistViewUrl"] == null ? null : json["artistViewUrl"],
    collectionViewUrl: json["collectionViewUrl"] == null ? null : json["collectionViewUrl"],
    trackViewUrl: json["trackViewUrl"] == null ? null : json["trackViewUrl"],
    previewUrl: json["previewUrl"] == null ? null : json["previewUrl"],
    artworkUrl30: json["artworkUrl30"] == null ? null : json["artworkUrl30"],
    artworkUrl60: json["artworkUrl60"] == null ? null : json["artworkUrl60"],
    artworkUrl100: json["artworkUrl100"] == null ? null : json["artworkUrl100"],
    collectionPrice: json["collectionPrice"] == null ? null : json["collectionPrice"].toDouble(),
    trackPrice: json["trackPrice"] == null ? null : json["trackPrice"].toDouble(),
    releaseDate: json["releaseDate"] == null ? null : DateTime.parse(json["releaseDate"]),
    collectionExplicitness: json["collectionExplicitness"] == null ? null : explicitnessValues.map[json["collectionExplicitness"]],
    trackExplicitness: json["trackExplicitness"] == null ? null : explicitnessValues.map[json["trackExplicitness"]],
    discCount: json["discCount"] == null ? null : json["discCount"],
    discNumber: json["discNumber"] == null ? null : json["discNumber"],
    trackCount: json["trackCount"] == null ? null : json["trackCount"],
    trackNumber: json["trackNumber"] == null ? null : json["trackNumber"],
    trackTimeMillis: json["trackTimeMillis"] == null ? null : json["trackTimeMillis"],
    country: json["country"] == null ? null : countryValues.map[json["country"]],
    currency: json["currency"] == null ? null : currencyValues.map[json["currency"]],
    primaryGenreName: json["primaryGenreName"] == null ? null : primaryGenreNameValues.map[json["primaryGenreName"]],
    isStreamable: json["isStreamable"] == null ? null : json["isStreamable"],
    contentAdvisoryRating: json["contentAdvisoryRating"] == null ? null : contentAdvisoryRatingValues.map[json["contentAdvisoryRating"]],
    collectionArtistViewUrl: json["collectionArtistViewUrl"] == null ? null : json["collectionArtistViewUrl"],
  );

  Map<String, dynamic> toJson() => {
    "wrapperType": wrapperType == null ? null : wrapperTypeValues.reverse[wrapperType],
    "kind": kind == null ? null : kindValues.reverse[kind],
    "artistId": artistId == null ? null : artistId,
    "collectionId": collectionId == null ? null : collectionId,
    "trackId": trackId == null ? null : trackId,
    "artistName": artistName == null ? null : artistName,
    "collectionName": collectionName == null ? null : collectionName,
    "trackName": trackName == null ? null : trackName,
    "collectionCensoredName": collectionCensoredName == null ? null : collectionCensoredName,
    "trackCensoredName": trackCensoredName == null ? null : trackCensoredName,
    "collectionArtistId": collectionArtistId == null ? null : collectionArtistId,
    "collectionArtistName": collectionArtistName == null ? null : collectionArtistName,
    "artistViewUrl": artistViewUrl == null ? null : artistViewUrl,
    "collectionViewUrl": collectionViewUrl == null ? null : collectionViewUrl,
    "trackViewUrl": trackViewUrl == null ? null : trackViewUrl,
    "previewUrl": previewUrl == null ? null : previewUrl,
    "artworkUrl30": artworkUrl30 == null ? null : artworkUrl30,
    "artworkUrl60": artworkUrl60 == null ? null : artworkUrl60,
    "artworkUrl100": artworkUrl100 == null ? null : artworkUrl100,
    "collectionPrice": collectionPrice == null ? null : collectionPrice,
    "trackPrice": trackPrice == null ? null : trackPrice,
    "releaseDate": releaseDate == null ? null : releaseDate.toIso8601String(),
    "collectionExplicitness": collectionExplicitness == null ? null : explicitnessValues.reverse[collectionExplicitness],
    "trackExplicitness": trackExplicitness == null ? null : explicitnessValues.reverse[trackExplicitness],
    "discCount": discCount == null ? null : discCount,
    "discNumber": discNumber == null ? null : discNumber,
    "trackCount": trackCount == null ? null : trackCount,
    "trackNumber": trackNumber == null ? null : trackNumber,
    "trackTimeMillis": trackTimeMillis == null ? null : trackTimeMillis,
    "country": country == null ? null : countryValues.reverse[country],
    "currency": currency == null ? null : currencyValues.reverse[currency],
    "primaryGenreName": primaryGenreName == null ? null : primaryGenreNameValues.reverse[primaryGenreName],
    "isStreamable": isStreamable == null ? null : isStreamable,
    "contentAdvisoryRating": contentAdvisoryRating == null ? null : contentAdvisoryRatingValues.reverse[contentAdvisoryRating],
    "collectionArtistViewUrl": collectionArtistViewUrl == null ? null : collectionArtistViewUrl,
  };
}

enum Explicitness { NOT_EXPLICIT, EXPLICIT, CLEANED }

final explicitnessValues = EnumValues({
  "cleaned": Explicitness.CLEANED,
  "explicit": Explicitness.EXPLICIT,
  "notExplicit": Explicitness.NOT_EXPLICIT
});

enum ContentAdvisoryRating { EXPLICIT, CLEAN }

final contentAdvisoryRatingValues = EnumValues({
  "Clean": ContentAdvisoryRating.CLEAN,
  "Explicit": ContentAdvisoryRating.EXPLICIT
});

enum Country { USA }

final countryValues = EnumValues({
  "USA": Country.USA
});

enum Currency { USD }

final currencyValues = EnumValues({
  "USD": Currency.USD
});

enum Kind { SONG }

final kindValues = EnumValues({
  "song": Kind.SONG
});

enum PrimaryGenreName { SOUNDTRACK, HIP_HOP_RAP, POP }

final primaryGenreNameValues = EnumValues({
  "Hip-Hop/Rap": PrimaryGenreName.HIP_HOP_RAP,
  "Pop": PrimaryGenreName.POP,
  "Soundtrack": PrimaryGenreName.SOUNDTRACK
});

enum WrapperType { TRACK }

final wrapperTypeValues = EnumValues({
  "track": WrapperType.TRACK
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
