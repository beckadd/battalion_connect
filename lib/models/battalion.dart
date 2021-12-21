class Battalion {
  final String name;

  Battalion({required this.name});

  Map<String, Object?> toJson() {
    return {
      'name': name,
    };
  }

  Battalion.fromJson(Map<String, Object?> json)
      : this(name: json['name']! as String);
}
