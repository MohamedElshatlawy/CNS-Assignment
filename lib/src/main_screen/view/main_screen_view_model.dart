import 'package:flutter/material.dart';

import '../../../core/blocs/generic_cubit/generic_cubit.dart';
import '../domain/usecases/main_screen_usecase.dart';

class MainScreenViewModel {
  final MainScreenUseCase mainScreenUseCase;
  MainScreenViewModel({required this.mainScreenUseCase});
  GenericCubit<int> screenIndex = GenericCubit<int>(0);
  PageController pageController = PageController();
  bool isOpenTaskFromHomeCrops = false;
  screenIndexChanged({required int index}) {
    screenIndex.onUpdateData(index);
  }

  pageControllerIndexChanged() {
    print(screenIndex.state.data);
    pageController = PageController(initialPage: screenIndex.state.data);
  }
}
