// Gestor de código
// https://app.quicktype.io/

import 'dart:convert';

ReqResRespuesta reqResRespuestaFromJson(String str) =>
    ReqResRespuesta.fromJson(json.decode(str));

String reqResRespuestaToJson(ReqResRespuesta data) =>
    json.encode(data.toJson());

class ReqResRespuesta {
  ReqResRespuesta({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;

  factory ReqResRespuesta.fromJson(Map<String, dynamic> json) =>
      ReqResRespuesta(
        page: json['page'],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Persona {
  Persona({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  factory Persona.fromJson(Map<String, dynamic> json) => Persona(
        id: json["id"],
        email: json["email"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        avatar: json["avatar"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "first_name": firstName,
        "last_name": lastName,
        "avatar": avatar,
      };
}
