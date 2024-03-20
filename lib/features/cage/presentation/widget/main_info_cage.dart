import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mustika_farm/theme_manager/asset_manager.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

import '../../../../theme_manager/color_manager.dart';
import '../../domain/entities/cage.dart';

class MainInfoCage extends StatelessWidget {
  const MainInfoCage({
    super.key,
    required this.cage,
  });

  final Cage cage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF85C226), ColorManager.primary],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () => GoRouter.of(context).pop(),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
              Image.asset(AssetManager.menuHorizontal),
            ],
          ),
          5.0.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cage.namaKandang ?? '',
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cage.alamatKandang ?? '',
                    style: const TextStyle(
                      fontSize: 10,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Jenis Kandang',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cage.jenisKandang ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
          10.0.spaceY,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '${cage.periode} | Umur ${cage.umur}',
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    'Tanggal DOC in',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    cage.tanggalDoc ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
