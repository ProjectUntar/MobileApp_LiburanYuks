class Meal {
  late final int id;

  String imageType = "";

  String title = "";

  late final int readyInMinutes;

  late final int servings;

  String sourceUrl = "";

  final String imageUrl = "";

  Meal(
      {required this.id,
      required this.imageType,
      required this.title,
      required this.readyInMinutes,
      required this.servings,
      required this.sourceUrl});

  Meal.fromMap(Map<String, dynamic> json) {
    id = json['id'];

    imageType = json['imageType'];

    title = json['title'];

    readyInMinutes = json['readyInMinutes'];

    servings = json['servings'];

    sourceUrl = json['sourceUrl'];
  }
}
