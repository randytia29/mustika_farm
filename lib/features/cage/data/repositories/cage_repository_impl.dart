import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:mustika_farm/core/failure/failure.dart';
import 'package:mustika_farm/features/cage/data/datasources/cage_remote_data_source.dart';
import 'package:mustika_farm/features/cage/domain/entities/cage.dart';
import 'package:mustika_farm/features/cage/domain/repositories/cage_repository.dart';

import '../../../../core/exception/exception.dart';

class CageRepositoryImpl implements CageRepository {
  final CageRemoteDataSource remoteDataSource;

  CageRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<Cage>>> getCage(String type) async {
    try {
      final result = await remoteDataSource.getCage(type);
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.toString()));
    } on SocketException catch (e) {
      return Left(ConnectionFailure(e.message));
    } on TlsException catch (e) {
      return Left(TlsFailure(e.message));
    } catch (e) {
      return Left(CommonFailure(e.toString()));
    }
  }
}
