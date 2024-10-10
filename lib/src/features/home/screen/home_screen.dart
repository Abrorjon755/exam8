import 'package:flutter/material.dart';

import '../../../common/model/meal_model.dart';
import '../../../common/style/app_icons.dart';
import '../../../common/style/app_images.dart';
import '../../../common/util/context_extension.dart';
import '../controller/home_controller.dart';
import 'meal_item.dart';
import 'my_bottom_sheet.dart';
import 'my_custom_circle.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with HomeController {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        title: MyCustomCircle(
          onTap: () {},
          child: const Image(
            image: AssetImage(AppImages.profile),
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          Builder(
            builder: (context) => MyCustomCircle(
              onTap: () {
                showBottomSheet(
                    context: context,
                    builder: (context) => const MyBottomSheet());
              },
              child: ColoredBox(
                color: context.colors.onPrimaryContainer,
                child: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Image(
                    image: AssetImage(AppIcons.search),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),
          MyCustomCircle(
            onTap: () {},
            child: ColoredBox(
              color: context.colors.onPrimary,
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Image(
                  image: AssetImage(AppIcons.filter),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              context.lang.britishMeals,
              style: context.textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ValueListenableBuilder(
              valueListenable: meals,
              builder: (BuildContext context, List<MealModel> value,
                      Widget? child) =>
                  GridView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                physics: const BouncingScrollPhysics(
                  decelerationRate: ScrollDecelerationRate.normal,
                ),
                itemCount: meals.value.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: .8,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (BuildContext context, int index) => MealItem(
                  model: meals.value[index],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
