import 'package:beardog_app/presentation/game_resume/screens/game_resume_screen.dart';
import 'package:beardog_app/presentation/game_selection/screens/game_selection_screen.dart';
import 'package:beardog_app/presentation/waiting_room/screens/waiting_room_screen.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GameSelectionScreen()
    ),
    GoRoute(
      path: '/waiting-room',
      builder: (context, state) => const WaitingRoomScreen()
    ),
    GoRoute(
      path: '/game-selection',
      builder: (context, state) => const GameSelectionScreen()
    ),
    GoRoute(
      path: '/game-resume',
      builder: (context, state) => const GameResumeScreen()
    ),
  ]
);