import 'package:flutter/material.dart';

import '../../../common/model/meal_model.dart';
import '../../../common/util/context_extension.dart';
import '../screen/home_screen.dart';

mixin HomeController on State<HomeScreen> {
  late final ValueNotifier<List<MealModel>> meals;

  Future<void> getFirstMeals() async {
    meals.value = await context.dependencies.homeRepository.getMeals();
  }

  @override
  void initState() {
    super.initState();
    meals = ValueNotifier<List<MealModel>>([]);
    getFirstMeals();
  }
}
