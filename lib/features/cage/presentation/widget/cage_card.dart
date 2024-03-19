import 'package:flutter/material.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import 'mini_info_cage.dart';

class CageCard extends StatelessWidget {
  const CageCard({
    super.key,
    required this.cage,
    required this.image,
    required this.colorHead,
  });

  final Cage cage;
  final String image;
  final Color colorHead;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (cage.statusAktif ?? false) ? () {} : null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: 20,
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.maxFinite,
                    height: 152,
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 62,
                    height: 40,
                    margin: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 20,
                          alignment: Alignment.center,
                          margin: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: colorHead,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            cage.jenisPeternak ?? '',
                            style: const TextStyle(
                              fontSize: 10,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Text(
                            cage.periode ?? '',
                            style: const TextStyle(
                              fontSize: 10,
                              color: Color(0xFF72777E),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              19.0.spaceY,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        cage.namaKandang ?? '',
                        style: TextStyle(
                          color: (cage.statusAktif ?? false)
                              ? const Color(0xFF1B6858)
                              : null,
                          fontWeight: FontWeight.w500,
                          fontSize: 23,
                        ),
                      ),
                      const Icon(Icons.menu)
                    ],
                  ),
                  Text(
                    cage.alamatKandang ?? '',
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 12,
                    ),
                  )
                ],
              ),
              12.0.spaceY,
              Visibility(
                visible: cage.statusAktif ?? false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MiniInfoCage(
                      value: cage.umur,
                      iconData: Icons.calendar_month_outlined,
                    ),
                    MiniInfoCage(
                      value: cage.populasi,
                      iconData: Icons.align_vertical_bottom_sharp,
                    ),
                    MiniInfoCage(
                      value: cage.bodyWeight,
                      iconData: Icons.branding_watermark,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
