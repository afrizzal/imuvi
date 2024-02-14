import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {

  const factory Movie({
    required int id,
    required String tittle,
    String? posterPath,
  }) = _Movie;

  factory Movie.fromJSON(Map<String, dynamic> json) => Movie(
    id: json['id'], tittle: json['title'], posterPath: json['poster_path']);
}