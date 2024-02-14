import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_detail.freezed.dart';

@freezed
class MovieDetail with _$MovieDetail {
  const factory MovieDetail({
    required int id,
    required String title,
    String? posterPath,
    required String overview,
    String? backdropPath,
    required int runtime,
    required double voteAverage,
    required List<String> genres,
  }) = _MovieDetail;

  factory MovieDetail.fromJSON(Map<String, dynamic> json) => MovieDetail(
    id: json['id'], 
    title: json['title'], 
    overview: json['overview'], 
    runtime: json['runtime'], 
    voteAverage: json['voteAverage'].toDouble(), 
    genres: List<String>.from(json['genres'].map((e) => e['name'])),
    posterPath: json['posterPath'],
    backdropPath: json['backdrop_path']);
}