class MealsModel {
  final dynamic id;
  final String image;
  final String title;

  MealsModel({required this.id, required this.image, required this.title});
  factory MealsModel.fromJson(json) {
    return MealsModel(
        id: json['id'], image: json['image'], title: json['title']);
  }
}
