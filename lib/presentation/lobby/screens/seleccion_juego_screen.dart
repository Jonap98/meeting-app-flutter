import 'package:beardog_app/data/datasources/beardog_client.dart';
import 'package:beardog_app/data/repositories/beardog_repository.dart';
import 'package:beardog_app/presentation/lobby/blocs/crear_sala_bloc/crear_sala_bloc.dart';
import 'package:beardog_app/presentation/lobby/widgets/custom_text_form_field.dart';
import 'package:beardog_app/presentation/lobby/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SeleccionJuegoScreen extends StatelessWidget {
  const SeleccionJuegoScreen({super.key});

  void getData(BuildContext context) {
    // context.read<CrearSalaBloc>().add(  )
    // context.read<TestBloc>().add(TestGetEvent());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
        body: Padding(
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
                        return AlertDialog(
                          title: const Text('Crear Sala'),
                          content: SizedBox(
                            height: size.height * 0.35,
                            child: Form(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Nombre de sala'),
                                  const SizedBox(height: 10),
                                  const CustomTextFormField(
                                    hint: 'Nombre',
                                    label: 'Nombre de sala',
                                  ),
                                  const SizedBox(height: 20),
                                  const Text('Nombre de sala'),
                                  const SizedBox(height: 10),
                                  const CustomTextFormField(
                                    hint: 'Nombre',
                                    label: 'Nombre de sala',
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width: size.width   ,
                                    child: ElevatedButton(
                                      onPressed: () => {
                                        // context.push('/seleccion-juego')
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>( Colors.redAccent ),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(size.height * 0.04),
                                          )
                                        )
                                      ),
                                      child: const Text('Comenzar', style: TextStyle(color: Colors.white),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      }
                    );
                    
                  },
                  child: const RoundedContainer(text: 'Crear partida')
                ),
                const SizedBox(height: 20),
                const RoundedContainer(text: 'Ingresar sala'),
              ],
            ),
          ),
        )
    
      ),
    );
  }
}