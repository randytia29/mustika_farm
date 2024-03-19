import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

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
              'Kandang',
              style: TextStyle(
                color: Color(0xFF1B6858),
                fontWeight: FontWeight.w700,
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
