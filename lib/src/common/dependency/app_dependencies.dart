import 'package:dio/dio.dart';
import 'package:exam8/src/common/service/api_service.dart';
import 'package:exam8/src/features/home/data/home_repository.dart';

class AppDependencies {
  AppDependencies({
    required this.locale,
    required this.theme,
    required this.dio,
    required this.apiService,
    required this.homeRepository,
  });

  bool theme;
  String locale;

  final Dio dio;
  final ApiService apiService;

  final IHomeRepository homeRepository;
}
