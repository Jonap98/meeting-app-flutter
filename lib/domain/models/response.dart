
import 'dart:convert';

class Respuesta {
  String msg;
  Object data;

  Respuesta({
    required this.msg,
    required this.data,
  });

  factory Respuesta.fromJson(Map<String, dynamic> json) => Respuesta(
        msg: json["msg"],
        data: json["data"],
    );

    Map<String, dynamic> toJson() => {
        "msg": msg,
        "data": data,
    };

  Respuesta responseFromJson(String str) => Respuesta.fromJson(json.decode(str));

  String responseToJson(Respuesta data) => json.encode(data.toJson());

}
