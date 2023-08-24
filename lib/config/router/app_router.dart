import 'package:cinemapedia/presentation/views/home_views/favorites_view.dart';
import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/', 
  routes: [

    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen( childView: FavoritesView(),),
      routes: [
        GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) =>
            MovieScreen(movieId: state.pathParameters['id'] ?? 'no-id')
        ),
      ]
    ),
  
  ]
);
