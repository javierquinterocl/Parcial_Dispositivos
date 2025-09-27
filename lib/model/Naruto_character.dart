class NarutoCharacter {
  int id;
  String name;
  List<String> images;
  List<String> jutsu;

  NarutoCharacter({
    required this.id,
    required this.name,
    required this.images,
    required this.jutsu,
  });

  factory NarutoCharacter.fromJsonMap(Map<String, dynamic> json) {
    return NarutoCharacter(
      id: json['id'] ?? 0,
      name: json['name'] ?? 'Not name',
      images: json['images'] != null ? List<String>.from(json['images']) : [""],
      jutsu: json['jutsu'] != null ? List<String>.from(json['jutsu']) : [""],
    );
  }
}