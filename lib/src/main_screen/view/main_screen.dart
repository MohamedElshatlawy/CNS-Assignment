import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/base/dependency_injection.dart';
import '../../../core/blocs/generic_cubit/generic_cubit.dart';

import '../../../core/shared_components/app_bottom_navigation_bar/app_bottom_navigation_bar.dart';
import '../../../core/shared_components/app_bottom_navigation_bar/models/app_bottom_navigation_bar_model.dart';
import '../../home/home_screen.dart';
import '../../services page/services_screen.dart';
import 'main_screen_view_model.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String routeName = 'Main Screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final viewModel = sl<MainScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericCubit<int>, GenericCubitState<int>>(
        bloc: viewModel.screenIndex,
        buildWhen: (previous, current) => current is GenericUpdatedState,
        builder: (context, screenIndexStates) {
          return Scaffold(
            extendBody: true,
            bottomNavigationBar: AppBottomNavigationBar(
                model: AppBottomNavigationBarModel(
              currentIndex: screenIndexStates.data,
              onTap: (value) {
                viewModel.isOpenTaskFromHomeCrops = false;
                viewModel.screenIndexChanged(index: value);
                viewModel.pageController.jumpToPage(value);
              },
            )),
            body: Padding(
              padding: const EdgeInsets.only(bottom: 63),
              child: SizedBox.expand(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: viewModel.pageController,
                  onPageChanged: (index) {},
                  children: [
                    HomeScreen(),
                    const ServicesScreen(),
                    Container(),
                    Container(),
                  ],
                ),
              ),
            ),
            // viewModel.screens[screenIndexStates.data],
          );
        });
  }
}
