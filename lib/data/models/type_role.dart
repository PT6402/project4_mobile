enum TypeRole {
  admin(value: "ADMIN"),
  user(value: "USER");

  final String value;
  const TypeRole({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': value,
    };
  }

  factory TypeRole.fromMap(Map<String, dynamic> map) {
    switch (map["role"]) {
      case "ADMIN":
        return TypeRole.admin;
      case "USER":
        return TypeRole.user;
      default:
        throw ArgumentError('Invalid type role value');
    }
  }
}
