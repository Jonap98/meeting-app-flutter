import 'package:beardog_app/domain/models/sala_model.dart';
import 'package:equatable/equatable.dart';



sealed class CrearSalaEvent extends Equatable {
  const CrearSalaEvent();
}

final class CrearSala extends CrearSalaEvent {
  final Sala sala;

  const CrearSala({ required this.sala });

  @override
  List<Object> get props => [sala];

}


