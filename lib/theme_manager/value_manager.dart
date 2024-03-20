import 'package:flutter/material.dart';

class ValueManager {
  static String baseUrl =
      'https://my-json-server.typicode.com/mhmdJalal/json-sample';

  static List<BoxShadow> customBoxShadow() => [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          blurRadius: 24,
          offset: const Offset(0, 1),
        )
      ];
}
