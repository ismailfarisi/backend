import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../utils/token_interceptor.dart';

@module
abstract class RegisterModules {
  @Environment('Prod')
  @Named('BaseUrl')
  String get baseProdUrl => 'https://backend.ravo.app';

  @Environment('Stage')
  @Named('BaseUrl')
  String get baseUrl => //'https://meal.habllen.com/api/';
      //   'http://192.168.1.59:3000/';
      'http://10.0.2.2:3000/';
  @Environment('Prod')
  @Named('AwsBucket')
  String get awsProdBucket =>
      'https://alba-ravo-prod.s3.me-central-1.amazonaws.com/';
  @Environment('Stage')
  @Named('AwsBucket')
  String get awsStageBucket =>
      'https://albacorp-homes-dev.s3.us-east-2.amazonaws.com/';

  @lazySingleton
  Dio getDio(@Named('BaseUrl') String baseUrl) {
    final dio = Dio(BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 30)));
    dio.interceptors.add(TokenInterceptor());

    dio.interceptors.add(LogInterceptor(
        requestHeader: false,
        requestBody: true,
        responseBody: true,
        responseHeader: false));
    return dio;
  }
}
