import 'package:flutter/material.dart';

import '../../../common/model/meal_model.dart';
import '../../../common/util/context_extension.dart';
import '../../../common/util/throttling.dart';
import '../screen/my_bottom_sheet.dart';

mixin MyBottomSheetController on State<MyBottomSheet> {
  final Throttling throttling = Throttling(const Duration(milliseconds: 300));
  late final ValueNotifier<List<MealModel>> results;
  late ValueNotifier<String> searchText;

  void onChange(String value) async {
    searchText.value = value;
    results.value =
        await context.dependencies.homeRepository.getMealsSearch(value);
  }

  @override
  void initState() {
    super.initState();
    results = ValueNotifier<List<MealModel>>([]);
    searchText = ValueNotifier<String>("");
  }
}
