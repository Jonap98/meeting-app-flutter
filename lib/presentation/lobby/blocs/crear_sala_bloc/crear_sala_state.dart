import 'package:beardog_app/domain/models/sala_model.dart';

// sealed class CrearSalaState extends Equatable {
sealed class CrearSalaState {
  const CrearSalaState();

  
}

final class CrearSalaInitial extends CrearSalaState {}

final class CrearSalaLoading extends CrearSalaState {}

final class CrearSalaSuccess extends CrearSalaState {
  final Object sala;
  CrearSalaSuccess( this.sala );
}

final class CrearSalaError extends CrearSalaState {
  final String? message;

  CrearSalaError(this.message);
}
