import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../../features/home/data/home_repository.dart';
import '../constants/constants.dart';
import '../dependency/app_dependencies.dart';
import '../service/api_service.dart';

class InitializeApp {
  const InitializeApp();

  Future<AppDependencies> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
      DeviceOrientation.portraitUp,
    ]);

    bool theme = true;
    String locale = "en";

    final dio = Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );
    final apiService = ApiService(dio: dio);

    // Repositories

    final homeRepository = HomeRepositoryImpl(apiService: apiService);

    // Dependencies
    return AppDependencies(
      locale: locale,
      theme: theme,
      dio: dio,
      apiService: apiService,
      homeRepository: homeRepository,
    );
  }
}
