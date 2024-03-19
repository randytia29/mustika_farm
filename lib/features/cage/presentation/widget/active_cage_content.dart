import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/presentation/cubit/active_cage_cubit.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import 'cage_card.dart';

class ActiveCageContent extends StatelessWidget {
  const ActiveCageContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ActiveCageCubit, ActiveCageState>(
      builder: (context, activeCageState) {
        if (activeCageState is ActiveCageLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (activeCageState is ActiveCageFailed) {
          return Text(activeCageState.message);
        }

        if (activeCageState is ActiveCageLoaded) {
          final cages = activeCageState.cages;

          return Expanded(
            child: Column(
              children: [
                Container(
                  height: 42,
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 17),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF9FCF4),
                    border: Border(
                      top: BorderSide(color: Colors.green),
                      bottom: BorderSide(color: Colors.green),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Text(
                        'Kamu memiliki ',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text(
                        '${cages.length} kandang aktif.',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      )
                    ],
                  ),
                ),
                12.0.spaceY,
                Expanded(
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      final cage = cages[index];

                      return CageCard(cage: cage);
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
