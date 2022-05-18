// ignore_for_file: avoid_print

import 'package:dio/dio.dart';

import '../../../share/core/app_routes.dart';
import '../models/users_model.dart';

class HomeRepository {
  final Dio _dio;

  HomeRepository(this._dio);

  Future<List<UsersModel>> getUsers() async {
    try {
      final response = await _dio.get(AppRoutes.baseUrl);
      final result =
          (response.data as List).map((x) => UsersModel.fromJson(x)).toList();
      return result;
    } catch (e) {
      print(e);
      rethrow;
    }
  }
}
