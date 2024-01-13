import 'package:beardog_app/presentation/lobby/screens/lobby_screens.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SeleccionJuegoScreen()
    ),
    GoRoute(
      path: '/sala-espera',
      builder: (context, state) => const SalaEsperaScreen()
    ),
    GoRoute(
      path: '/seleccion-juego',
      builder: (context, state) => const SeleccionJuegoScreen()
    ),
  ]
);