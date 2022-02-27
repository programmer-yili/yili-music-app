class Music {
  final String id;

  final String name;

  const Music({required this.id, required this.name});

  factory Music.fromJson(Map<String, dynamic> json) {
    return Music(id: json['id'], name: json['name']);
  }
}
