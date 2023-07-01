import 'dart:convert';

import 'package:front/domain/entities/user.dart';
import 'package:front/infra/api.dart';

class UserRepository {
  final Api _api = Api(); // XXX: use dep injection

  Future<UserEntity> getById(int id) async {
    try {
      final response = await _api.get('user/$id');
      final data = jsonDecode(response.body)['data'];
      return UserEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<UserEntity>> getAll() async {
    try {
      final response = await _api.get('user');
      final data = jsonDecode(response.body)['data'];
      return List.from(data)
          .map((e) => UserEntity.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserEntity?> storeUser(
    UserEntity entity,
  ) async {
    try {
      final response = await _api.post(
        'user',
        body: entity.toJson(),
      );
      final data = jsonDecode(response.body)['data'];
      return UserEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<UserEntity> updateUser(
    int id,
    UserEntity entity,
  ) async {
    try {
      final response = await _api.put('user/$id');
      final data = jsonDecode(response.body)['data'];
      return UserEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteUser(int id) async {
    await _api.delete('user/$id');
  }
}
