import 'package:flutter/widgets.dart';

import 'package:go_router/go_router.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/features/cage/presentation/screen/cage_detail_screen.dart';
import 'package:mustika_farm/features/cage/presentation/screen/cage_screen.dart';

class RoutesService {
  static CustomTransitionPage _buildPageWithDefaultTransition(
          {required Widget child}) =>
      CustomTransitionPage(
        child: child,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(begin: const Offset(1, 0), end: Offset.zero)
              .chain(CurveTween(curve: Curves.easeIn));

          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      );

  static GoRouter goRouter = GoRouter(
    initialLocation: '/cage',
    routes: [
      GoRoute(
        path: '/cage',
        name: 'cage',
        pageBuilder: (context, state) =>
            _buildPageWithDefaultTransition(child: const CageScreen()),
        routes: [
          GoRoute(
            path: 'cage-detail',
            name: 'cage-detail',
            pageBuilder: (context, state) => _buildPageWithDefaultTransition(
                child: CageDetailScreen(cage: state.extra as Cage)),
          )
        ],
      )
    ],
  );
}
