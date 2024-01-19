import 'package:beardog_app/presentation/game_resume/widgets/challenges_dialog.dart';
import 'package:flutter/material.dart';

class PersonalCard extends StatelessWidget {

  final String name;
  final double? progress;
  final String? icon;
  final Size size;

  const PersonalCard({
    super.key,
    required this.size,
    required this.name,
    this.progress = 0,
    this.icon = 'onthebeach.png',
  });


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              showDialog(
                context: context,
                builder: ( context ) {
                  return const ChallengesDialog();
                }
              );
            },
            child: Container(
              width: size.width,
              height: size.width,
              padding: const EdgeInsets.all( 15 ),
              decoration: BoxDecoration(
                color: const Color(0xff934DBE),
                borderRadius: BorderRadius.circular(20)
              ),
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xffffffff),
                  shape: BoxShape.circle
                ),
                child: Image.asset(
                  'assets/$icon',
                  height: size.width * 0.2,
                ),
              ),
            ),
          ),
        ),
        Text(
          name,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
        Stack(
          alignment: const AlignmentDirectional(-1, 0),
          children: [
            Container(
              height: 15,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:const Color.fromARGB(255, 228, 228, 228),
              ),
            ),
            Container(
              color: const  Color(0xff4788E9),
              height: progress,
              width: 55,
            ),
          ],
        )
      ],
    );
  }
}
