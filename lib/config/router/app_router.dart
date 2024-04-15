import 'package:go_router/go_router.dart';

import '/presentation/screens/screens.dart';

final appRouter = GoRouter(
  routes: [

    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/cubits',
      builder: (context, state) => const CubitCounterScreen(),
    ),

    GoRoute(
      path: '/counter-bloc',
      builder: (context, state) => const BlocCounterScreen(),
    ),

    GoRoute(
      path: '/update-counter-bloc',
      builder: (context, state) => const UpdateBlocCounterScreen(),
    ),

  ]
);