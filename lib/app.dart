import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';

import 'features/home/presentation/cubit/user_cubit.dart';
import 'sl.dart';
import 'theme_manager/theme_data_manager.dart';
import 'utils/routes_service.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<UserCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<ActiveCageCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<RestCageCubit>(),
        ),
      ],
      child: MaterialApp.router(
        title: 'Mustika Farm',
        theme: getApplicationThemeData(context),
        routerConfig: RoutesService.goRouter,
      ),
    );
  }
}
