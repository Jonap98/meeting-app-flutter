import 'package:beardog_app/presentation/game_resume/widgets/challenge_card.dart';
import 'package:flutter/material.dart';


class YourChallengesSection extends StatelessWidget {
  const YourChallengesSection({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only( bottom: size.width * 0.1),
      child:  Column(
        children: [
          const Text(
            'Tus retos',
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              // color: Colors.white
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: [
                ChallengeCard(size: size),
                ChallengeCard(size: size),
                ChallengeCard(size: size),
                ChallengeCard(size: size),
              ],
            ),
          )
        ],
      ),
    );
  }
}
