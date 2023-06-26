class PrescriptionEntity {
  DateTime? emissionDate;
  DateTime? expirationDate;
  int? pacientId;
  int? physicianId;
  String? medicineName;
  double? medicineDose;
  String? medicineUseType;
  int? quantity;
  int? frequency;
  bool? autoRenovable;
  String? observation;
  String? pacientName;
  String? pacientCni;
  String? pacientBirthDate;
  String? pacientPhone;
  String? physicianCips;

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
    this.pacientName,
    this.pacientCni,
    this.pacientBirthDate,
    this.pacientPhone,
    this.physicianCips,
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
        medicineDose: json['medicineDose'] as double?,
        medicineUseType: json['medicineUseType'] as String?,
        pacientName: json['pacientName'] as String?,
        pacientCni: json['pacientCni'] as String?,
        pacientBirthDate: json['pacientBirthDate'] as String?,
        pacientPhone: json['pacientPhone'] as String?,
        physicianCips: json['physicianCips'] as String?,
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
        'pacientName': pacientName,
        'pacientCni': pacientCni,
        'pacientBirthDate': pacientBirthDate,
        'pacientPhone': pacientPhone,
        'physicianCips': physicianCips,
      };
}
