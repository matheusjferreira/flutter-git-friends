import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../core/app_images.dart';
import '../cards/category_card_widget.dart';

class CarouselCategoryWidget extends StatelessWidget {
  const CarouselCategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 124,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCardWidget(
            asset: AppImages.dart,
            label: 'dart'.i18n(),
            amount: 25,
          ),
          const SizedBox(width: 16),
          CategoryCardWidget(
            asset: AppImages.java,
            label: 'java'.i18n(),
            amount: 48,
          ),
          const SizedBox(width: 16),
          CategoryCardWidget(
            asset:  AppImages.linux,
            label: 'linux'.i18n(),
            amount: 76,
          ),
          const SizedBox(width: 16),
          CategoryCardWidget(
            asset:  AppImages.c,
            label: 'c'.i18n(),
            amount: 32,
          ),
        ],
      ),
    );
  }
}
