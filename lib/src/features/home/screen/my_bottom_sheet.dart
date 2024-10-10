import 'package:flutter/material.dart';

import '../../../common/model/meal_model.dart';
import '../../../common/util/context_extension.dart';
import '../controller/my_bottom_sheet_controller.dart';
import 'meal_item.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet>
    with MyBottomSheetController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.transparent,
      body: BottomSheet(
        onClosing: () {},
        builder: (context) => Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.onPrimary,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: TextField(
                    onChanged: (value) => throttling(() => onChange(value)),
                    cursorColor: context.colors.onPrimaryContainer,
                    decoration: InputDecoration(
                      hintText: context.lang.search,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ValueListenableBuilder(
                  valueListenable: results,
                  builder: (BuildContext context, List<MealModel> value,
                          Widget? child) =>
                      GridView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    physics: const BouncingScrollPhysics(
                      decelerationRate: ScrollDecelerationRate.normal,
                    ),
                    itemCount: value.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: .8,
                      mainAxisSpacing: 20,
                      crossAxisSpacing: 20,
                    ),
                    itemBuilder: (BuildContext context, int index) => MealItem(
                      model: value[index],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
