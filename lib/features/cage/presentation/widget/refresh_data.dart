import 'package:flutter/material.dart';

class RefreshData extends StatelessWidget {
  const RefreshData({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: IconButton(
        onPressed: onTap,
        icon: const Icon(Icons.refresh),
      ),
    );
  }
}
