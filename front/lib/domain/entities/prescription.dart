class PrescriptionEntity {
  DateTime? emissionDate;
  DateTime? expirationDate;
  int? pacientId;
  int? physicianId;
  String? medicineName;
  bool? autoRenovable;
  int? quantity;
  int? frequency;
  String? observation;

  PrescriptionEntity({
    this.emissionDate,
    this.expirationDate,
    this.pacientId,
    this.physicianId,
    this.medicineName,
    this.autoRenovable,
    this.quantity,
    this.frequency,
    this.observation,
  });

  factory PrescriptionEntity.fromJson(Map<String, dynamic> json) =>
      PrescriptionEntity(
        emissionDate: json['emissionDate'] as DateTime?,
        expirationDate: json['expirationDate'] as DateTime?,
        pacientId: json['pacientId'] as int?,
        physicianId: json['physicianId'] as int?,
        medicineName: json['medicineName'] as String?,
        autoRenovable: json['autoRenovable'] as bool?,
        quantity: json['quantity'] as int?,
        frequency: json['frequency'] as int?,
        observation: json['observation'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'emissionDate': emissionDate,
        'expirationDate': expirationDate,
        'pacientId': pacientId,
        'physicianId': physicianId,
        'medicineName': medicineName,
        'autoRenovable': autoRenovable,
        'quantity': quantity,
        'frequency': frequency,
        'observation': observation,
      };
}
