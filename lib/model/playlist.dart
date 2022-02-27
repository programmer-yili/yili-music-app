import 'music.dart';

class Playlist {
  final String id;

  final String name;

  final String description;

  final List<Music> musicList;

  const Playlist(
      {required this.id,
      required this.name,
      required this.description,
      required this.musicList});

  factory Playlist.fromJson(Map<String, dynamic> json) {
    List<Music> list = [];
    json['musicList'].forEach((item) {
      list.add(Music.fromJson(item));
    });

    return Playlist(
        id: json['id'],
        name: json['name'],
        description: json['description'],
        musicList: json['musicList'].isEmpty ? [] : list);
  }
}
