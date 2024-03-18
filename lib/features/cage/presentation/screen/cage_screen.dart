import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';
import 'package:mustika_farm/features/cage/presentation/widget/search_text_field.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

class CageScreen extends StatefulWidget {
  const CageScreen({
    super.key,
  });

  @override
  State<CageScreen> createState() => _CageScreenState();
}

class _CageScreenState extends State<CageScreen> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    context.read<ActiveCageCubit>().fetchActiveCage();
    context.read<RestCageCubit>().fetchRestCage();

    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Kandang',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            8.0.spaceY,
            Row(
              children: [
                Expanded(child: SearchTextField(controller: _controller)),
                8.0.spaceX,
                Container(
                  width: 128,
                  height: 32,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(96),
                  ),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),

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
