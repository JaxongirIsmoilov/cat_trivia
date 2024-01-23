class CatHolder {
  int? id;
  String? text;
  String? createdAt;
  String? image;

  CatHolder( this.text, this.createdAt, {this.image});

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'createdAt': createdAt,
      'image' : image
    };
  }

  factory CatHolder.fromJson(Map<String, dynamic> json) {
    return CatHolder( json['text'], json['createdAt']);
  }
}
