class ClinicEntity {
  int? id;
  String? name;
  DateTime? dateOfFoundation;

  ClinicEntity({
    this.id,
    this.name,
    this.dateOfFoundation,
  });

  factory ClinicEntity.fromJson(Map<String, dynamic> json) => ClinicEntity(
        dateOfFoundation: json['dateOfFoundation'] as DateTime?,
        id: json['id'] as int?,
        name: json['name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'dateOfFoundation': dateOfFoundation,
      };
}
