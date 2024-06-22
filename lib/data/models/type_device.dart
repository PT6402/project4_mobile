enum TypeDevice {
  web(value: "WEB"),
  mobile(value: "MOBILE");

  final String? value;
  const TypeDevice({required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type_device': value,
    };
  }

  factory TypeDevice.fromMap(Map<String, dynamic> map) {
    switch (map["type_device"]) {
      case "WEB":
        return TypeDevice.web;
      case "MOBILE":
        return TypeDevice.mobile;
      default:
        throw ArgumentError('Invalid type device value');
    }
  }
}
