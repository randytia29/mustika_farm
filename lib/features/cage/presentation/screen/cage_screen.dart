import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';

class CageScreen extends StatefulWidget {
  const CageScreen({
    super.key,
  });

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ActiveCageCubit>().fetchActiveCage();
    context.read<RestCageCubit>().fetchRestCage();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('kandang')),

      // body: BlocBuilder<UserCubit, UserState>(
      //   builder: (context, userState) {
      //     if (userState is UserLoading) {
      //       return const Center(child: CircularProgressIndicator());
      //     }

      //     if (userState is UserFailed) {
      //       return Center(child: Text(userState.message));
      //     }

      //     if (userState is UserLoaded) {
      //       final users = userState.users;

      //       return ListView.separated(
      //         itemBuilder: (context, index) {
      //           final user = users[index];

      //           return UserCard(user: user);
      //         },
      //         separatorBuilder: (context, index) => 8.0.spaceY,
      //         itemCount: users.length,
      //       );
      //     }

      //     return Container();
      //   },
      // ),
    );
  }
}
