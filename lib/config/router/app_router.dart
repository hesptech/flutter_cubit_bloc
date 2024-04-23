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

    GoRoute(
      path: '/new-user',
      builder: (context, state) => const RegisterScreen(),
    ),

    GoRoute(
      path: '/new-user-bloc',
      builder: (context, state) => const BlocRegisterScreen(),
    ),

    GoRoute(
      path: '/counter-bloc-simple',
      builder: (context, state) => const BlocSimpleCounterScreen(),
    ),
  ]
);