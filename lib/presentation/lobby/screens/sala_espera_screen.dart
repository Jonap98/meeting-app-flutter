import 'package:beardog_app/presentation/lobby/widgets/rounded_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SalaEsperaScreen extends StatelessWidget {
  const SalaEsperaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xff4788E9),
      appBar:  AppBar(
        leading: IconButton(
          onPressed: () => {}, 
          icon: const Icon( Icons.arrow_back_ios_new_rounded )
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        // title: const Text(
        //   'Sala de espera',
        //   style: TextStyle(
        //     color: Colors.white
        //   ),
        // ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.1, bottom: size.width * 0.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/fire.png',
              height: size.width * 0.2,
            ),
            const SizedBox(height: 10),
            const Text(
              'Sala de espera',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              '5 Jugadores en la sala',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white
              ),
            ),
            const SizedBox(height: 20),
              Expanded(
                child: ListView(
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                    RoundedContainer(text: 'Player'),
                  ],
                ),
              ),
            const SizedBox(height: 20),
            Container(
              height: size.height * 0.08,
              width: size.width,
              // color: Colors.amber,
              child: ElevatedButton(
                onPressed: () {
                  // context.push('/seleccion-juego');
                  print('Clicked');
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
              )
            ),
          ],
        ),
      ),
    );
  }
}