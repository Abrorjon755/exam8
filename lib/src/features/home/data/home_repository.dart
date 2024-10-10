import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../../common/constants/constants.dart';
import '../../../common/model/meal_model.dart';
import '../../../common/service/api_service.dart';

abstract interface class IHomeRepository {
  const IHomeRepository._();

  Future<List<MealModel>> getMeals();

  Future<List<MealModel>> getMealsSearch(String text);
}

class HomeRepositoryImpl implements IHomeRepository {
  const HomeRepositoryImpl({required this.apiService});

  final ApiService apiService;

  @override
  Future<List<MealModel>> getMeals() async {
    try {
      const String myPath = "${Constants.path}${Constants.filterPath}";
      final data = await apiService.request(
        myPath,
        queryParams: {"a": "british"},
      );
      final result = const JsonDecoder()
          .cast<String, Map<String, Object?>>()
          .convert(data ?? "");
      return List<Map<String, Object?>>.from(result["meals"] as List)
          .map(MealModel.fromJson)
          .toList();
    } on Object catch (e, s) {
      if (kDebugMode) {
        print("$e\n$s");
      }
      return [];
    }
  }

  @override
  Future<List<MealModel>> getMealsSearch(String text) async {
    try {
      const String myPath = "${Constants.path}${Constants.searchPath}";
      final data = await apiService.request(
        myPath,
        queryParams: {"s": text},
      );
      final result = const JsonDecoder()
          .cast<String, Map<String, Object?>>()
          .convert(data ?? "");
      return List<Map<String, Object?>>.from(result["meals"] as List)
          .map(MealModel.fromJson)
          .toList();
    } on Object catch (e, s) {
      if (kDebugMode) {
        print("$e\n$s");
      }
      return [];
    }
  }
}
