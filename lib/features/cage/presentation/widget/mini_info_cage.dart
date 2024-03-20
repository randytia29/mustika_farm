import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

class MiniInfoCage extends StatelessWidget {
  const MiniInfoCage({
    super.key,
    this.value,
    required this.iconData,
  });

  final String? value;
  final String iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(iconData),
        8.0.spaceX,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              convertValue(value),
              style: const TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              convertUnit(value),
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String convertValue(String? value) {
    if (value != null) {
      return value.split(' ')[0];
    } else {
      return '';
    }
  }

  String convertUnit(String? value) {
    if (value != null) {
      return value.split(' ')[1];
    } else {
      return '';
    }
  }
}
