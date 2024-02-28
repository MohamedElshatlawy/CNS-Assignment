import '../../data/models/main_screen_model.dart';
import '../repository/main_screen_reposatory.dart';

class MainScreenUseCase {
  final MainScreenRepository _mainScreenRepository;

  MainScreenUseCase(this._mainScreenRepository);

  Future<MainScreenModel> call() async {
    return await _mainScreenRepository.getMainScreenDetails();
  }
}
