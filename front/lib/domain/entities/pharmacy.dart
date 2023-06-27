class PharmacyEntity {
  int? id;
  String? name;
  DateTime? dateOfFoundation;

  PharmacyEntity({
    this.id,
    this.name,
    this.dateOfFoundation,
  });

  factory PharmacyEntity.fromJson(Map<String, dynamic> json) => PharmacyEntity(
        id: json['id'] as int?,
        name: json['name'] as String?,
        dateOfFoundation: json['dateOfFoundation'] as DateTime?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'dateOfFoundation': dateOfFoundation,
      };
}
