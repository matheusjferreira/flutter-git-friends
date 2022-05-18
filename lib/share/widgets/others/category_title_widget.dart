import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../core/app_fonts.dart';

class CategoryTitleWidget extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  const CategoryTitleWidget({
    Key? key,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppFonts.subtitle),
        InkWell(
          onTap: onTap,
          child: Text('see_all'.i18n(), style: AppFonts.textButton),
        ),
      ],
    );
  }
}
