// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

typedef FromMap<T> = T Function(Map<String, dynamic> map);

class ResultDto<T> {
  String? message;
  bool? status;
  T? model;
  FromMap<T>? fromMap;

  ResultDto({
    this.message,
    this.status,
    this.model,
    this.fromMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'message': message,
      'status': status,
      'model': model != null ? (model as dynamic).toMap() : null,
    };
  }

  factory ResultDto.fromMap(Map<String, dynamic> map, FromMap<T> fromMap) {
    return ResultDto<T>(
      message: map['message'] != null ? map['message'] as String : null,
      status: map['status'] != null ? map['status'] as bool : null,
      model: map['model'] != null
          ? fromMap(map['model'] as Map<String, dynamic>)
          : null,
      fromMap: fromMap,
    );
  }

  String toJson() => json.encode(toMap());

  factory ResultDto.fromJson(String source, FromMap<T> fromMap) =>
      ResultDto.fromMap(json.decode(source) as Map<String, dynamic>, fromMap);

  @override
  String toString() =>
      'ResultDto(message: $message, status: $status, model: $model)';
}
