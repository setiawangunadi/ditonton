import 'package:ditonton/data/models/tv/tv_table.dart';
import 'package:ditonton/domain/entities/televisi.dart';
import 'package:ditonton/domain/entities/tv_detail.dart';

final testTv = Tv(
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
    voteCount: 79);

final testTvList = [testTv];

final testTvDetail = TvDetail(
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

final testWatchlistTv = Tv.watchlist(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvTable = TvTable(
  id: 1,
  name: 'name',
  posterPath: 'posterPath',
  overview: 'overview',
);

final testTvMap = {
  'id': 1,
  'overview': 'overview',
  'posterPath': 'posterPath',
  'name': 'name',
};
