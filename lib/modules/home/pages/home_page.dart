import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:localization/localization.dart';

import '../../../share/core/app_colors.dart';
import '../../../share/core/app_fonts.dart';
import '../../../share/core/app_images.dart';
import '../../../share/core/app_routes.dart';
import '../../../share/widgets/bars/app_bar_widget.dart';
import '../../../share/widgets/bars/search_bar_widget.dart';
import '../../../share/widgets/carousel/carousel_category_widget.dart';
import '../../../share/widgets/others/category_title_widget.dart';
import '../../../share/widgets/tiles/user_tile_widget.dart';
import '../bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final bloc = Modular.get<HomeBloc>();

  @override
  void initState() {
    super.initState();
    bloc.add(GetListTransaction());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBarWidget(
        title: 'git_friends'.i18n(),
        leadingIcon: Image.asset(AppImages.burguer),
        actionIcon: const Icon(Icons.info_rounded),
        leadingOnPressed: () {},
        actionOnPressed: () => Modular.to.pushNamed(AppRoutes.about),
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (context) => bloc,
          child: BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              // bloc carregando
              if (state is Loading) {
                return const Center(
                    child: CircularProgressIndicator(color: AppColors.white));
              }

              // bloc carregado
              if (state is Loaded) {
                return _buildBody(state);
              }

              // bloc error
              if (state is Error) {
                return const Center(child: Text('erro'));
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}

_buildBody(state) {
  return Container(
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
      ),
      color: AppColors.white,
    ),
    width: double.infinity,
    child: Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                   Text('hello_user'.i18n(['<user>']), style: AppFonts.bodyTitle),
                  const SizedBox(height: 8),
                  Text('welcome_back'.i18n(), style: AppFonts.bodyTitleBold),
                  const SizedBox(height: 32),
                  SearchBarWidget(onTap: () {}),
                  const SizedBox(height: 32),
                  CategoryTitleWidget(label: 'category'.i18n(), onTap: () {}),
                  const SizedBox(height: 16),
                  const CarouselCategoryWidget(),
                  const SizedBox(height: 24),
                  CategoryTitleWidget(label: 'my_friends'.i18n(), onTap: () {}),
                  const SizedBox(height: 16),
                  _buildList(state),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

_buildList(state) {
  return ListView.builder(
    physics: const NeverScrollableScrollPhysics(),
    shrinkWrap: true,
    itemCount: state.usersModel.length,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: UserTileWidget(
          image: state.usersModel[index].avatarUrl,
          user: state.usersModel[index].login,
          id: state.usersModel[index].id,
          nodeId: state.usersModel[index].nodeId,
        ),
      );
    },
  );
}
