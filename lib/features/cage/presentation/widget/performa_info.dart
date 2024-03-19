import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

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
              'Performa',
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
