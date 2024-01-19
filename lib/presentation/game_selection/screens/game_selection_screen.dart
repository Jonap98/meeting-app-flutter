import 'package:beardog_app/data/datasources/beardog_client.dart';
import 'package:beardog_app/data/repositories/beardog_repository.dart';
import 'package:beardog_app/presentation/game_selection/widgets/create_room_dialog.dart';
import 'package:beardog_app/presentation/game_selection/widgets/enter_room_dialog.dart';
import 'package:beardog_app/presentation/lobby/blocs/crear_sala_bloc/crear_sala_bloc.dart';
import 'package:beardog_app/presentation/lobby/widgets/custom_text_form_field.dart';
import 'package:beardog_app/presentation/lobby/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameSelectionScreen extends StatelessWidget {
  const GameSelectionScreen({super.key});

  void getData(BuildContext context) {
    // context.read<CrearSalaBloc>().add(  )
    // context.read<TestBloc>().add(TestGetEvent());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    
    // final data = context.select((TestBloc bloc) => bloc.state.datos);

    return BlocProvider(
      create: (_) => CrearSalaBloc(bearDogRepository: BearDogRepository(BearDogClient())),
      child: Scaffold(
        backgroundColor: const Color(0xff4788E9),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () => {}, 
              icon: const Icon( Icons.exit_to_app_rounded )
            ),
          ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    // child: Text(context.select((TestBloc bloc) => bloc.state.datos)),
                    // child: context.select((TestBloc bloc) => Text(bloc.state.)),
                  ),
                  const SizedBox(height: 50),
                  Image.asset(
                    'assets/fire.png',
                    height: size.width * 0.2,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'BearDog',
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () {
                      Feedback.forTap(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return CreateRoomDialog(size: size);
                        }
                      );
                      
                    },
                    child: const RoundedContainer(text: 'Crear sala de juego')
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Feedback.forTap(context);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return EnterRoomDialog(size: size);
                        }
                      );
                      
                    },
                    child: const RoundedContainer(text: 'Ingresar a sala de juego')
                  ),
                ],
              ),
            ),
          ),
        )
    
      ),
    );
  }
}
