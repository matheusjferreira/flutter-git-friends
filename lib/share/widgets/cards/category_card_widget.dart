import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../core/app_colors.dart';
import '../../core/app_fonts.dart';

class CategoryCardWidget extends StatelessWidget {
  final String asset;
  final String label;
  final int amount;
  const CategoryCardWidget({
    Key? key,
    required this.asset,
    required this.label,
    required this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 116,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primaryColor,
      ),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Image.asset(asset),
          const SizedBox(height: 8),
          Text(label, style: AppFonts.captionBoldWhite),
          const SizedBox(height: 8),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2),
              color: AppColors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text('$amount' ' ' 'commits'.i18n(),
                  style: AppFonts.captionSmallBold),
            ),
          ),
        ],
      ),
    );
  }
}
