import 'dart:convert';

import 'package:front/domain/entities/physician.dart';
import 'package:front/infra/api.dart';

class PhysicianRepository {
  final Api api;

  PhysicianRepository(this.api);

  Future<PhysicianEntity> getById(int id) async {
    try {
      final response = await api.get('user/physician/$id');
      final data = jsonDecode(response.body)['data'];
      return PhysicianEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PhysicianEntity>> getAll() async {
    try {
      final response = await api.get('user/physician');
      final data = jsonDecode(response.body)['data'];
      return List.from(data)
          .map((e) => PhysicianEntity.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<PhysicianEntity?> storePhysician(
    PhysicianEntity entity,
  ) async {
    try {
      final response = await api.post(
        'user/physician',
        body: entity.toJson(),
      );
      final data = jsonDecode(response.body)['data'];
      return PhysicianEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<PhysicianEntity> updatePhysician(
    int id,
    PhysicianEntity entity,
  ) async {
    try {
      final response = await api.put('user/physician/$id');
      final data = jsonDecode(response.body)['data'];
      return PhysicianEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePhysician(int id) async {
    await api.delete('user/physician/$id');
  }
}
