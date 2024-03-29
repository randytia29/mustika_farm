import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../../../../theme_manager/color_manager.dart';
import '../../../../theme_manager/value_manager.dart';
import 'info_detail.dart';

class PerformaInfo extends StatelessWidget {
  const PerformaInfo({
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
              'Performa',
              style: TextStyle(
                color: ColorManager.primary,
                fontWeight: FontWeight.w700,
                fontSize: 15,
              ),
            ),
            19.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'IP',
                    subtitle: '709',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'FCR',
                    subtitle: '709',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'ADG',
                    subtitle: '65 ',
                    unit: 'gr/hari',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Deplesi',
                    subtitle: '1 %',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Bobot Kandang',
                    subtitle: '1,523 ',
                    unit: 'gr',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Bobot Rerata',
                    subtitle: '1,523 ',
                    unit: 'gr',
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
