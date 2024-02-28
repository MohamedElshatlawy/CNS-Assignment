import '../../../../core/util/network/network_info.dart';
import '../../domain/repository/main_screen_reposatory.dart';
import '../datasources/main_screen_remote_data_source.dart';
import '../models/main_screen_model.dart';

class MainScreenRepositoryImp implements MainScreenRepository {
  final MainScreenRemoteDataSource dataSource;
  final NetworkInfo networkInfo;

  MainScreenRepositoryImp({
    required this.dataSource,
    required this.networkInfo,
  });

  @override
  Future<MainScreenModel> getMainScreenDetails() async {
    if (await networkInfo.isConnected) {
      return await dataSource.getMainScreenDetails();
    } else {
      throw Exception('No Internet Connection');
    }
  }
}
