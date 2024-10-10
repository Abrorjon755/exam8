class MealModel {
  const MealModel({
    required this.id,
    required this.image,
    required this.name,
  });

  final String id;
  final String name;
  final String image;

  static MealModel fromJson(Map<String, Object?> json) => MealModel(
        id: json["idMeal"] as String,
        image: json["strMealThumb"] as String,
        name: json["strMeal"] as String,
      );

  Map<String, Object?> toJson() => {
        "idMeal": id,
        "strMealThumb": image,
        "strMeal": name,
      };
}
