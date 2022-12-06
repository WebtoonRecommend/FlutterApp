class Expiration{
  Expiration({
    this.id,
    required this.name,
    this.refresh_time,
});

  final int? id;
  final String name;
  String? refresh_time;

  factory Expiration.fromMap(Map<String, dynamic> json) => new Expiration(
    id: json['id'],
    name: json['name'],
    refresh_time: json['refresh_time'],
  );

  Map<String, dynamic> toMap() {
    return {
      'name': name,
    };
  }
}