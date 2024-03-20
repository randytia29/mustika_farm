import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../../../../theme_manager/asset_manager.dart';
import '../../../../theme_manager/color_manager.dart';
import '../../../../theme_manager/value_manager.dart';
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
      onTap: (cage.statusAktif ?? false)
          ? () => GoRouter.of(context).goNamed('cage-detail', extra: cage)
          : null,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: ValueManager.customBoxShadow(),
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
                    width: 64,
                    height: 43,
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
                            color: cage.jenisPeternak == 'PLASMA'
                                ? ColorManager.primary
                                : colorHead,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Text(
                            cage.jenisPeternak ?? '',
                            style: const TextStyle(
                              fontSize: 11,
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
                              fontSize: 11,
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
                              ? ColorManager.primary
                              : null,
                          fontWeight: FontWeight.w500,
                          fontSize: 19,
                        ),
                      ),
                      Image.asset(AssetManager.menuVertical),
                    ],
                  ),
                  Text(
                    cage.alamatKandang ?? '',
                    style: const TextStyle(
                      color: Color(0xFF555555),
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              12.0.spaceY,
              Visibility(
                visible: cage.statusAktif ?? false,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MiniInfoCage(
                      value: cage.umur,
                      iconData: AssetManager.calendar,
                    ),
                    MiniInfoCage(
                      value: cage.populasi,
                      iconData: AssetManager.bird,
                    ),
                    MiniInfoCage(
                      value: cage.bodyWeight,
                      iconData: AssetManager.weight,
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
