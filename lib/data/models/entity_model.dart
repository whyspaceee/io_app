class EntityModel {
  String? photoUrl;
  String? name;
  bool? dangerous;
  int? rating;
  String? description;
  String? uses;

  EntityModel(
      {this.photoUrl,
      this.name,
      this.dangerous,
      this.rating,
      this.description,
      this.uses});

  EntityModel.fromJson(Map<String, dynamic> json) {
    photoUrl = json['photoUrl'];
    name = json['name'];
    dangerous = json['dangerous'];
    rating = json['rating'];
    description = json['description'];
    uses = json['uses'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['photoUrl'] = photoUrl;
    data['name'] = name;
    data['dangerous'] = dangerous;
    data['rating'] = rating;
    data['description'] = description;
    data['uses'] = uses;
    return data;
  }
}
