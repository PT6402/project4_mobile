enum TypeLogin {
  email(value: "EMAIL"),
  google(value: "GOOGLE");

  final String value;
  const TypeLogin({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type_login': value,
    };
  }

  factory TypeLogin.fromMap(Map<String, dynamic> map) {
    switch (map["type_login"]) {
      case "EMAIL":
        return TypeLogin.email;
      case "GOOGLE":
        return TypeLogin.google;
      default:
        throw ArgumentError('Invalid type login value');
    }
  }
}
