import 'package:flutter/widgets.dart';

class InfoDetail extends StatelessWidget {
  const InfoDetail({
    super.key,
    required this.title,
    required this.subtitle,
    this.unit,
  });

  final String title;
  final String subtitle;
  final String? unit;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              unit ?? '',
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        )
      ],
    );
  }
}
