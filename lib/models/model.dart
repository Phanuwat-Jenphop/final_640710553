
class Photo {
  final String? id;
  final String? title;
  final String? subtitle;
  final String? image;

  Photo({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    // call back to textfield
    return Photo(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      image: json['image'],
    );
  }
}

