import 'package:flutter/material.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/features/cage/presentation/widget/cage_info.dart';
import 'package:mustika_farm/features/cage/presentation/widget/chicken_info.dart';
import 'package:mustika_farm/features/cage/presentation/widget/food_info.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../widget/main_info_cage.dart';
import '../widget/performa_info.dart';

class CageDetailScreen extends StatelessWidget {
  const CageDetailScreen({super.key, required this.cage});

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MainInfoCage(cage: cage),
              20.0.spaceY,
              const PerformaInfo(),
              12.0.spaceY,
              const CageInfo(),
              12.0.spaceY,
              const ChickenInfo(),
              12.0.spaceY,
              const FoodInfo(),
              12.0.spaceY,
            ],
          ),
        ),
      ),
    );
  }
}
