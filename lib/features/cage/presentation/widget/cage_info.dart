import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';
import 'package:mustika_farm/theme_manager/value_manager.dart';

import '../../../../theme_manager/color_manager.dart';
import 'info_detail.dart';

class CageInfo extends StatelessWidget {
  const CageInfo({
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
              'Kandang',
              style: TextStyle(
                color: ColorManager.primary,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            19.0.spaceY,
            const InfoDetail(
              title: 'Standarisasi Data Harian',
              subtitle: 'COBB',
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Tanggal Mulai',
                    subtitle: '19 Des 2021',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Tanggal Chick in',
                    subtitle: '20 Des 2021',
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
