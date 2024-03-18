import 'dart:convert';

import 'package:mustika_farm/features/cage/data/models/cage_model.dart';
import 'package:http/http.dart' as http;

import '../../../../core/exception/exception.dart';
import '../../../../theme_manager/value_manager.dart';

abstract class CageRemoteDataSource {
  Future<List<CageModel>> getCage(String type);
}

class CageRemoteDataSourceImpl implements CageRemoteDataSource {
  final http.Client client;

  CageRemoteDataSourceImpl({required this.client});

  @override
  Future<List<CageModel>> getCage(String type) async {
    final response =
        await client.get(Uri.parse('${ValueManager.baseUrl}/$type'));

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      final cages =
          List.from(data['data']).map((e) => CageModel.fromJson(e)).toList();

      return cages;
    } else {
      throw ServerException();
    }
  }
}
