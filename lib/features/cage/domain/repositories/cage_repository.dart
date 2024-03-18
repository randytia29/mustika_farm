import 'package:dartz/dartz.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';

import '../../../../core/failure/failure.dart';

abstract class CageRepository {
  Future<Either<Failure, List<Cage>>> getCage(String type);
}
