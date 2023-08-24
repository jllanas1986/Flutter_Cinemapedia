import 'package:go_router/go_router.dart';

import 'package:cinemapedia/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/home/0',
  routes: [
    
    GoRoute(
      path: '/home/:page',
      name: HomeScreen.name,
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');
        return HomeScreen(pageIndex: pageIndex);
      },

      routes: [
         GoRoute(
          path: 'movie/:id',
          name: MovieScreen.name,
          builder: (context, state) =>
            MovieScreen(movieId: state.pathParameters['id'] ?? 'no-id')
        ),
      ]
    ),



    // GoRoute(
    //   path: '/',
    //   redirect: ( _ , __ ) => '/home/0',
    // ),

  ]
);



//Rutas padre/hijo
  // GoRoute(
  //     path: '/',
  //     name: HomeScreen.name,
  //     builder: (context, state) => const HomeScreen( childView: FavoritesView(),),
  //     routes: [
  //       GoRoute(
  //         path: 'movie/:id',
  //         name: MovieScreen.name,
  //         builder: (context, state) =>
  //           MovieScreen(movieId: state.pathParameters['id'] ?? 'no-id')
  //       ),
  //     ]
  //   ),
  
  // ]


