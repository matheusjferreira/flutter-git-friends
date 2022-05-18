import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../share/core/app_colors.dart';
import '../../../share/core/app_images.dart';
import '../../../share/core/app_routes.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _buildNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.white,
      child: Center(
        child: Image.asset(AppImages.logo),
      ),
    );
  }
}

_buildNextPage() {
  Future.delayed(const Duration(seconds: 2)).then((value) async {
    Modular.to.navigate(AppRoutes.home);
  });
}
