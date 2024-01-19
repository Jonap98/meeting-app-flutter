import 'package:beardog_app/presentation/game_resume/widgets/personal_card.dart';
import 'package:flutter/material.dart';


class GameResumeSection extends StatelessWidget {
  const GameResumeSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      // padding: EdgeInsets.all( size.width * 0.1 ),
      // padding: EdgeInsets.only( top: size.width * 0.05, left: size.width * 0.1, right: size.width * 0.1, bottom: size.width * 0.1),
      padding: EdgeInsets.only( left: size.width * 0.1, right: size.width * 0.1, bottom: size.width * 0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Resumen de juego',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              // color: Colors.white
            ),
          ),
          const SizedBox(height: 10),
            Expanded(
              child: GridView(
                physics: const BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.8,
                  crossAxisCount: 2
                ),
                children: [
                  PersonalCard(
                    size: size,
                    name: 'Anita lava la tina',
                    icon: 'fresita.png',
                    progress: 10,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'Gaby gaby',
                    icon: 'fresita.png',
                    progress: 10,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'El Jona',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'El loco del barrio',
                    icon: 'locote del barrio.png',
                    progress: 10,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'La fresita',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'La fresita',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'La fresita',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'La fresita',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                  PersonalCard(
                    size: size,
                    name: 'La fresita',
                    // icon: 'fresita',
                    progress: 5,
                  ),
                ],
              )
            ),
        ],
      ),
    );
  }
}
