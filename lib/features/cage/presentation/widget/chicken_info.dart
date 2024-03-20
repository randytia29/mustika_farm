import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../../../../theme_manager/color_manager.dart';
import '../../../../theme_manager/value_manager.dart';
import 'info_detail.dart';

class ChickenInfo extends StatelessWidget {
  const ChickenInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: ValueManager.customBoxShadow(),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 19,
          left: 23,
          right: 23,
          bottom: 19,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Ayam',
              style: TextStyle(
                color: ColorManager.primary,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            19.0.spaceY,
            const InfoDetail(
              title: 'Nama DOC',
              subtitle: 'BR BIG TOP',
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'DOC Masuk',
                    subtitle: '5.000 ',
                    unit: 'ekor',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Bobot Awal DOC',
                    subtitle: '2.490 ',
                    unit: 'ekor',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Ayam Terjual',
                    subtitle: '2.500 ',
                    unit: 'ekor',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Deplesi',
                    subtitle: '10 ',
                    unit: 'ekor',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const InfoDetail(
              title: 'Sisa Ayam',
              subtitle: '2.490 ',
              unit: 'ekor',
            ),
          ],
        ),
      ),
    );
  }
}
