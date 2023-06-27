import 'dart:convert';

import 'package:front/domain/entities/user.dart';
import 'package:front/infra/api.dart';

class UserRepository {
  final Api _api = Api(); // XXX: use dep injection

  Future<UserEntity?> getById(int id) async {
    try {
      final response = await _api.get('user/$id');
      final data = jsonDecode(response.body)['data'];
      return UserEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }
}
