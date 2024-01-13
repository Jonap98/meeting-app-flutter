
import 'package:beardog_app/data/repositories/beardog_repository.dart';
import 'package:beardog_app/presentation/lobby/blocs/crear_sala_bloc/crear_sala_event.dart';
import 'package:beardog_app/presentation/lobby/blocs/crear_sala_bloc/crear_sala_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CrearSalaBloc extends Bloc<CrearSalaEvent, CrearSalaState> {

  final BearDogRepository bearDogRepository;

  CrearSalaBloc({
    required this.bearDogRepository
  }) : super( CrearSalaInitial() ) {
    // on<CrearSalaEvent>( _onCreate() )
  }

  void _onCreate( CrearSala event, Emitter<CrearSalaState> emit ) async {
    final sala = event.sala;

    // if( !sala ) return emit( CrearSalaError('Error') );

    emit( CrearSalaLoading() );

    try {
      final results = await bearDogRepository.get('crear-sala');
      emit( CrearSalaSuccess(results.data) );
    } catch( error ) {
      emit( 
        error is CrearSalaError 
        ? CrearSalaError(error.message) 
        : CrearSalaError('Something wents wrong')
      );
    }
  }

}