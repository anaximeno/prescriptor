import 'dart:convert';

import 'package:front/infra/api.dart';

import '../entities/entities.dart';

class PacientRepository {
  final Api _api = Api();

  Future<PacientEntity> getById(int id) async {
    try {
      final response = await _api.get('user/pacient/$id');
      final data = jsonDecode(response.body)['data'];
      return PacientEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PacientEntity>> getAll() async {
    try {
      final response = await _api.get('user/pacient');
      final data = jsonDecode(response.body)['data'];
      return List.from(data).map((e) => PacientEntity.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<PacientEntity> updatePacient(int id, PacientEntity pacient) async {
    try {
      final response = await _api.put(
        'user/pacient/$id',
        body: pacient.toJson(),
      );
      final data = jsonDecode(response.body)['data'];
      return PacientEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<PacientEntity> createUser(PacientEntity pacient) async {
    try {
      final response = await _api.post(
        'user/pacient',
        body: pacient.toJson(),
      );
      final data = jsonDecode(response.body)['data'];
      return PacientEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deleteById(int id) async {
    try {
      _api.delete('user/pacient/$id');
    } catch (e) {
      rethrow;
    }
  }
}
