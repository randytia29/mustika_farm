import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/rest_cage_cubit.dart';
import 'package:mustika_farm/theme_manager/color_manager.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../../../../theme_manager/asset_manager.dart';
import 'cage_card.dart';
import 'refresh_data.dart';

class RestCageContent extends StatelessWidget {
  const RestCageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RestCageCubit, RestCageState>(
      builder: (context, restCageState) {
        if (restCageState is RestCageLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (restCageState is RestCageFailed) {
          return RefreshData(
            onTap: () {
              context.read<RestCageCubit>().fetchRestCage();
            },
          );
        }

        if (restCageState is RestCageLoaded) {
          final cages = restCageState.cages;

          return Expanded(
            child: Column(
              children: [
                Container(
                  height: 42,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
                  decoration: BoxDecoration(
                    color: const Color(0xFF1B6858).withOpacity(0.1),
                    border: Border(
                      top: BorderSide(color: ColorManager.primary),
                      bottom: BorderSide(color: ColorManager.primary),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Kamu memiliki ',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                      ),
                      Text(
                        '${cages.length} kandang rehat.',
                        style: const TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final cage = cages[index];

                      return Padding(
                        padding: EdgeInsets.only(
                          left: 15,
                          right: 15,
                          top: index == 0 ? 12 : 0,
                          bottom: index == cages.length - 1 ? 12 : 0,
                        ),
                        child: CageCard(
                          cage: cage,
                          image: AssetManager.restFarm,
                          colorHead: const Color(0xFF555555),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        12.0.spaceY,
                    itemCount: cages.length,
                  ),
                )
              ],
            ),
          );
        }

        return Container();
      },
    );
  }
}
