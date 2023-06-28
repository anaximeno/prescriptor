import 'dart:convert';

import 'package:front/domain/entities/user.dart';
import 'package:front/infra/api.dart';

class LoginRepository {
  final Api _api = Api(); // XXX

  Future<UserEntity> login({
    required String username,
    required String password,
  }) async {
    try {
      final response = await _api.post(
        'login',
        body: {
          'username': username,
          'password': password,
        },
      );
      final data = jsonDecode(response.body)['data'];
      return UserEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
