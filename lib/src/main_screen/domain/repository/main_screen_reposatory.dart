import '../../data/models/main_screen_model.dart';

abstract class MainScreenRepository {
  Future<MainScreenModel> getMainScreenDetails();
}
