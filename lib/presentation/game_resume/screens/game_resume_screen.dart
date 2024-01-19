import 'package:beardog_app/presentation/game_resume/widgets/game_resume_section.dart';
import 'package:beardog_app/presentation/game_resume/widgets/your_challenges_section.dart';
import 'package:flutter/material.dart';

class GameResumeScreen extends StatefulWidget {
  const GameResumeScreen({super.key});

  @override
  State<GameResumeScreen> createState() => _GameResumeScreenState();
}

class _GameResumeScreenState extends State<GameResumeScreen> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedPage,
          onDestinationSelected: (index) {
            setState(() {
              selectedPage = index;
            });
          },
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.space_dashboard),
              label: 'Resumen'
            ),
            NavigationDestination(
              icon: Icon(Icons.web_stories),
              label: 'Tus retos'
            ),
          ],
        ),
        appBar:  AppBar(
          actions: [
            IconButton(
              onPressed: (){},
              icon: const Icon( Icons.exit_to_app),
            )
          ],
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          centerTitle: true,
        ),
        body: [
          GameResumeSection(size: size),
          YourChallengesSection(size: size),
        ][selectedPage]
      ),
    );
  }
}
