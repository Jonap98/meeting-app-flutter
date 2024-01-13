// To parse this JSON data, do
//
//     final sala = salaFromJson(jsonString);

import 'dart:convert';

Sala salaFromJson(String str) => Sala.fromJson(json.decode(str));

String salaToJson(Sala data) => json.encode(data.toJson());

class Sala {
    String nombre;
    int codigoSala;
    String password;
    String cantidadRetos;
    String owner;
    List<String> idsJugadores;
    DateTime updatedAt;
    DateTime createdAt;
    int id;
    String? error;

    Sala({
        required this.nombre,
        required this.codigoSala,
        required this.password,
        required this.cantidadRetos,
        required this.owner,
        required this.idsJugadores,
        required this.updatedAt,
        required this.createdAt,
        required this.id,
    });
    
    // Sala.withError(String errorMessage) {
    //   error = errorMessage;
    // }

    factory Sala.fromJson(Map<String, dynamic> json) => Sala(
        nombre: json["nombre"],
        codigoSala: json["codigo_sala"],
        password: json["password"],
        cantidadRetos: json["cantidad_retos"],
        owner: json["owner"],
        idsJugadores: List<String>.from(json["ids_jugadores"].map((x) => x)),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "codigo_sala": codigoSala,
        "password": password,
        "cantidad_retos": cantidadRetos,
        "owner": owner,
        "ids_jugadores": List<dynamic>.from(idsJugadores.map((x) => x)),
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
    };

    
}
