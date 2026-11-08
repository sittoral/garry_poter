class CharacterModel {
  final String fullName;
  final String nickname;
  final String hogwartsHouse;
  final String interpretedBy;
  final List<String> children;
  final String image;
  final String birthdate;
  final int index;

  CharacterModel({
    required this.fullName,
    required this.nickname,
    required this.hogwartsHouse,
    required this.interpretedBy,
    required this.children,
    required this.image,
    required this.birthdate,
    required this.index,
  });

  factory CharacterModel.fromJson(Map<String, dynamic> json) {
    return CharacterModel(
      fullName: json['fullName'] as String? ?? '',
      nickname: json['nickname'] as String? ?? '',
      hogwartsHouse: json['hogwartsHouse'] as String? ?? '',
      interpretedBy: json['interpretedBy'] as String? ?? '',
      children: List<String>.from(json['children'] ?? []),
      image: json['image'] as String? ?? '',
      birthdate: json['birthdate'] as String? ?? '',
      index: json['index'] as int? ?? 0,
    );
  }
}