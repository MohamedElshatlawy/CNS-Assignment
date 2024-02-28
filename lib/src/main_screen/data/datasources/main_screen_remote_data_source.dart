import '../../../../core/util/api_routes.dart';
import '../../../../core/util/environment/environment.dart';
import '../../../../core/util/network_service.dart';
import '../models/main_screen_model.dart';

abstract class MainScreenRemoteDataSource {
  Future<MainScreenModel> getMainScreenDetails();
}

class MainScreenRemoteDataSourceImpl implements MainScreenRemoteDataSource {
  final NetworkService networkService;

  MainScreenRemoteDataSourceImpl(this.networkService);
  final tempToken = Environment.token;

  @override
  Future<MainScreenModel> getMainScreenDetails() async {
    // Map<String, dynamic> queryParams = {};
    // Map<String, dynamic> headers = {
    //   "Authorization": 'Bearer $tempToken',
    // };
    final response = await networkService.get(
      ApiRoutes.categories,
      // queryParams: queryParams,
      // headers: headers,
    );
    return MainScreenModel.fromJson(response.data["data"]);
  }
}
