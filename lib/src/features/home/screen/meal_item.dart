import 'dart:math';

import 'package:flutter/cupertino.dart';

import '../../../common/model/meal_model.dart';
import '../../../common/style/app_icons.dart';
import '../../../common/util/context_extension.dart';

class MealItem extends StatelessWidget {
  const MealItem({super.key, required this.model});

  final MealModel model;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.onPrimaryContainer.withOpacity(.1),
                      offset: const Offset(12, 12),
                      blurRadius: 30,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: ColoredBox(
                      color: context.colors.onPrimaryContainer,
                      child: Image(
                        image: NetworkImage(model.image),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Text(
                model.name,
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.secondaryContainer,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5),
              Text(
                model.id,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colors.tertiary,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "\$${Random().nextInt(100)}",
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: context.colors.secondaryContainer,
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: context.colors.surfaceTint,
              borderRadius: BorderRadius.circular(50),
            ),
            child: const SizedBox.square(
              dimension: 30,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Image(
                  image: AssetImage(AppIcons.plus),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
