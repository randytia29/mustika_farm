import 'package:dartz/dartz.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/features/cage/domain/repositories/cage_repository.dart';

import '../../../../core/failure/failure.dart';
import '../../../../core/usecases/usecase.dart';

class GetCage implements Usecase<List<Cage>, Params> {
  final CageRepository repository;

  GetCage(this.repository);

  @override
  Future<Either<Failure, List<Cage>>> call(Params params) async =>
      await repository.getCage(params.type);
}

class Params {
  final String type;

  const Params({required this.type});
}
