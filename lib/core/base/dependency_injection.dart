import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:meteorology_poc/core/base/route_genrator.dart';
import 'package:path_provider/path_provider.dart';

import '../../src/auth/login_view_model.dart';
import '../../src/main_screen/data/datasources/main_screen_remote_data_source.dart';
import '../../src/main_screen/data/repository/main_screen_reposatory_imp.dart';
import '../../src/main_screen/domain/repository/main_screen_reposatory.dart';
import '../../src/main_screen/domain/usecases/main_screen_usecase.dart';
import '../../src/main_screen/view/main_screen_view_model.dart';
import '../../src/services page/services_view_model.dart';
import '../common/config.dart';
import '../util/api_interceptor/api_interceptor.dart';
import '../util/localization/cubit/localization_cubit.dart';
import '../util/localization/localization_cache_helper.dart';
import '../util/localization/models/localization_model.dart';
import '../util/network/network_info.dart';
import '../util/network_service.dart';
import '../util/routes/routes_reader.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final dynamicRouts = await load();

  sl.registerFactory(() => dynamicRouts);

  sl.registerFactory(() => RouteGenerator(routs: sl()));

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));

  sl.registerFactory(() => LocalizationCasheHelper());

  sl.registerFactory(() => LocalizationCubit(sl()));

  sl.registerLazySingleton(() => InternetConnectionChecker());

  sl.registerLazySingleton<NetworkService>(() => NetworkServiceImpl());

  sl.registerLazySingleton(() => Dio(
        BaseOptions(
          baseUrl: Config.baseUrl,
          // connectTimeout:const Duration(milliseconds: 100000) ,
          // receiveTimeout: const Duration(milliseconds: 100000) ,
          headers: Config.headers,
        ),
      )..interceptors.add(
          ApiInterceptor(),
        ));

  /// VIEW MODELS

  sl.registerFactory(() => MainScreenViewModel(mainScreenUseCase: sl()));
  sl.registerFactory(() => LoginViewModel());
  sl.registerFactory(() => ServicesViewModel());

  /// USECASES

  sl.registerLazySingleton(() => MainScreenUseCase(sl()));

  /// REPOSITORIES

  sl.registerLazySingleton<MainScreenRepository>(() => MainScreenRepositoryImp(
        dataSource: sl(),
        networkInfo: sl(),
      ));

  /// DATA SOURCE

  sl.registerLazySingleton<MainScreenRemoteDataSource>(
      () => MainScreenRemoteDataSourceImpl(sl()));

  final document = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(document.path);
  sl.registerFactory<LocalizationModelAdapter>(
      () => LocalizationModelAdapter());
  Hive.registerAdapter(LocalizationModelAdapter());

  Box box = await Hive.openBox('box');
  sl.registerFactory(() => box);
}
