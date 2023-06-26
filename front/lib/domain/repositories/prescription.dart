import 'dart:io';

import 'package:front/domain/entities/prescription.dart';
import 'package:front/infra/api.dart';

class PrescriptionRepository {
  final Api _api = Api(); // XXX: use dep injection

  Future<PrescriptionEntity?> storePrescription(
    PrescriptionEntity entity,
  ) async {
    try {
      final data = await _api.post('/prescription', body: entity.toJson());
      print(data.toString());
      return null;
    } catch (e) {
      rethrow;
    }
  }

  // Future<PrescriptionEntity> getPrescriptionById(int Id) {
  //   // TODO
  // }
}
