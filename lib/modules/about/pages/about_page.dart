import 'package:easter_egg_trigger/easter_egg_trigger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../../share/core/app_colors.dart';
import '../../../share/core/app_fonts.dart';
import '../../../share/core/app_images.dart';
import '../../../share/widgets/bars/app_bar_widget.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  bool? easterActive = false;
  final textStyle = AppFonts.paragraphNormal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBarWidget(
        title: 'about'.i18n(),
        leadingIcon: const Icon(Icons.chevron_left),
        leadingOnPressed: () => Modular.to.pop(),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: AppColors.white,
                ),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 64),
                      _buildE(easterActive, () {
                        easterActive = true;
                        setState(() {});
                      }),
                      const SizedBox(height: 64),
                      Text('about_text'.i18n(), style: textStyle),
                      Text('author'.i18n(), style: textStyle),
                      const SizedBox(height: 32),
                      Text('github'.i18n(), style: AppFonts.paragraphBold),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

_buildE(easterActive, Function action) {
  return EasterEggTrigger(
    action: action,
    codes: const [
      EasterEggTriggers.SwipeLeft,
      EasterEggTriggers.SwipeUp,
      EasterEggTriggers.SwipeRight,
      EasterEggTriggers.SwipeDown,
    ],
    child: easterActive == false
        ? SizedBox(
            height: 80,
            child: Image.asset(AppImages.logo),
          )
        : SizedBox(
            height: 300,
            width: 300,
            child: Image.asset(AppImages.e)),
  );
}
