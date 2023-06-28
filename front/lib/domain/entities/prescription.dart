class PrescriptionEntity {
  int? id;
  String? emissionDate;
  String? expirationDate;
  int? pacientId;
  int? physicianId;
  String? medicineName;
  double? medicineDose;
  String? medicineUseType;
  int? quantity;
  int? frequency;
  bool? autoRenovable;
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
    this.medicineDose,
    this.medicineUseType,
  });

  factory PrescriptionEntity.fromJson(Map<String, dynamic> json) =>
      PrescriptionEntity(
        emissionDate: json['emissionDate'] as String?,
        expirationDate: json['expirationDate'] as String?,
        pacientId: json['pacientId'] as int?,
        physicianId: json['physicianId'] as int?,
        medicineName: json['medicineName'] as String?,
        autoRenovable: json['autoRenovable'] as bool?,
        quantity: json['quantity'] as int?,
        frequency: json['frequency'] as int?,
        observation: json['observation'] as String?,
        medicineDose: json['medicineDose'] as double?,
        medicineUseType: json['medicineUseType'] as String?,
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
        'medicineDose': medicineDose,
        'medicineUseType': medicineUseType,
      };
}
