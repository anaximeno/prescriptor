import 'dart:convert';

import 'package:front/domain/entities/prescription.dart';
import 'package:front/infra/api.dart';

class PrescriptionRepository {
  final Api _api = Api(); // XXX: use dep injection

  Future<PrescriptionEntity> getById(int id) async {
    try {
      final response = await _api.get('prescription/$id');
      final data = jsonDecode(response.body)['data'];
      return PrescriptionEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<PrescriptionEntity>> getAll() async {
    try {
      final response = await _api.get('prescription');
      final data = jsonDecode(response.body)['data'];
      return List.from(data)
          .map((e) => PrescriptionEntity.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      rethrow;
    }
  }

  Future<PrescriptionEntity?> storePrescription(
    PrescriptionEntity entity,
  ) async {
    try {
      final response = await _api.post(
        'prescription',
        body: entity.toJson(),
      );
      final data = jsonDecode(response.body)['data'];
      return PrescriptionEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<PrescriptionEntity> updatePrescription(
    int id,
    PrescriptionEntity entity,
  ) async {
    try {
      final response = await _api.put('prescription/$id');
      final data = jsonDecode(response.body)['data'];
      return PrescriptionEntity.fromJson(data as Map<String, dynamic>);
    } catch (e) {
      rethrow;
    }
  }

  Future<void> deletePrescription(int id) async {
    await _api.delete('prescription/$id');
  }
}
