import 'package:flutter/material.dart';
import 'package:mustika_farm/theme_manager/space_manager.dart';

class MiniInfoCage extends StatelessWidget {
  const MiniInfoCage({
    super.key,
    this.value,
    required this.iconData,
  });

  final String? value;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: const Color(0xFF999999),
          size: 30,
        ),
        8.0.spaceX,
        Column(
          children: [
            Text(
              newMethod(value),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }

  String newMethod(String? value) {
    if (value != null) {
      return value.replaceAll(' ', '\n');
    } else {
      return '';
    }
  }
}
