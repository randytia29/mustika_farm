import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import 'info_detail.dart';

class FoodInfo extends StatelessWidget {
  const FoodInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
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
            const Text(
              'Pakan',
              style: TextStyle(
                color: Color(0xFF1B6858),
                fontWeight: FontWeight.w700,
              ),
            ),
            19.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Pakan Masuk',
                    subtitle: '2.500 ',
                    unit: 'kg',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Pakan Keluar',
                    subtitle: '50 ',
                    unit: 'kg',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Pakan Pakai',
                    subtitle: '1.000 ',
                    unit: 'kg',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Sisa Pakan',
                    subtitle: '1.450 ',
                    unit: 'kg',
                  ),
                )
              ],
            ),
            7.0.spaceY,
            const Row(
              children: [
                Expanded(
                  child: InfoDetail(
                    title: 'Konsumsi Pakan per Ekor',
                    subtitle: '5 ',
                    unit: 'kg',
                  ),
                ),
                Expanded(
                  child: InfoDetail(
                    title: 'Efisiensi Pakan',
                    subtitle: '85 %',
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
