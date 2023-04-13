class PerModels {
  final int? id;
  final String nameper;
  final String lastper;
  final String ageper;
  final int? addressper;

  PerModels(
      {this.id,
      required this.nameper,
      required this.lastper,
      required this.ageper,
      this.addressper});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nameper': nameper,
      'lastper': lastper,
      'ageper': ageper,
      'addressper': addressper,
    };
  }
}
