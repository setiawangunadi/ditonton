import 'dart:convert';

import 'package:ditonton/data/models/tv/tv_model.dart';
import 'package:ditonton/data/models/tv/tv_response.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../json_reader.dart';

void main() {
  final tTvModel = TvModel(
    adult: false,
    backdropPath: "/dfX2UaHVE5c7kLBFbgmEZJuy4Ev.jpg",
    genreIds: [10767, 35],
    id: 61818,
    originCountry: ["US"],
    originalLanguage: "en",
    originalName: "Late Night with Seth Meyers",
    overview:
    "Seth Meyers, who is \"Saturday Night Live’s\" longest serving anchor on the show’s wildly popular \"Weekend Update,\" takes over as host of NBC’s \"Late Night\" — home to A-list celebrity guests, memorable comedy and the best in musical talent. As the Emmy Award-winning head writer for \"SNL,\" Meyers has established a reputation for sharp wit and perfectly timed comedy, and has gained fame for his spot-on jokes and satire. Meyers takes his departure from \"SNL\" to his new post at \"Late Night,\" as Jimmy Fallon moves to \"The Tonight Show\".",
    popularity: 6918.857,
    posterPath: "/g6MrJxNaHYGYU7Sxo72e5B8gKOV.jpg",
    firstAirDate: DateTime(2014, 02, 25),
    name: "Late Night with Seth Meyers",
    voteAverage: 5.6,
    voteCount: 79,
  );
  final tTvResponseModel =
  TvResponse(tvList: <TvModel>[tTvModel]);
  group('fromJson', () {
    test('should return a valid model from JSON', () async {
      // arrange
      final Map<String, dynamic> jsonMap =
      json.decode(readJson('tv/dummy_data/now_playing_tv.json'));
      // act
      final result = TvResponse.fromJson(jsonMap);
      // assert
      expect(result, tTvResponseModel);
    });
  });

  group('toJson', () {
    test('should return a JSON map containing proper data', () async {
      // arrange

      // act
      final result = tTvResponseModel.toJson();
      // assert
      final expectedJsonMap = {
        "results": [
          {
            "adult": false,
            "backdrop_path": "/dfX2UaHVE5c7kLBFbgmEZJuy4Ev.jpg",
            "genre_ids": [
              10767,
              35
            ],
            "id": 61818,
            "origin_country": [
              "US"
            ],
            "original_language": "en",
            "original_name": "Late Night with Seth Meyers",
            "overview": "Seth Meyers, who is \"Saturday Night Live’s\" longest serving anchor on the show’s wildly popular \"Weekend Update,\" takes over as host of NBC’s \"Late Night\" — home to A-list celebrity guests, memorable comedy and the best in musical talent. As the Emmy Award-winning head writer for \"SNL,\" Meyers has established a reputation for sharp wit and perfectly timed comedy, and has gained fame for his spot-on jokes and satire. Meyers takes his departure from \"SNL\" to his new post at \"Late Night,\" as Jimmy Fallon moves to \"The Tonight Show\".",
            "popularity": 6918.857,
            "poster_path": "/g6MrJxNaHYGYU7Sxo72e5B8gKOV.jpg",
            "first_air_date": "2014-02-25",
            "name": "Late Night with Seth Meyers",
            "vote_average": 5.6,
            "vote_count": 79
          }
        ],
      };
      expect(result, expectedJsonMap);
    });
  });
}
