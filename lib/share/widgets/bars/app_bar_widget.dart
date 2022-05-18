import 'package:flutter/material.dart';

import '../../core/app_fonts.dart';

class AppBarWidget extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final VoidCallback leadingOnPressed;
  final VoidCallback? actionOnPressed;
  final Widget leadingIcon;
  final Widget? actionIcon;

  const AppBarWidget({
    Key? key,
    required this.title,
    required this.leadingOnPressed,
    required this.leadingIcon,
    this.actionOnPressed,
    this.actionIcon,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(64);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leading: IconButton(icon: leadingIcon, onPressed: leadingOnPressed),
      actions: [
        actionIcon != null ? IconButton(icon: actionIcon!, onPressed: actionOnPressed) : const SizedBox(),
      ],
      title: Text(title, style: AppFonts.appBarTitle),
      centerTitle: true,
    );
  }
}
