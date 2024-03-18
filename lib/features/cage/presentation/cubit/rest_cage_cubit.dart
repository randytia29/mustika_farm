import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/domain/usecases/get_cage.dart';

import '../../domain/entities/cage.dart';

part 'rest_cage_state.dart';

class RestCageCubit extends Cubit<RestCageState> {
  final GetCage _getCage;

  RestCageCubit({required GetCage getCage})
      : _getCage = getCage,
        super(RestCageInitial());

  void fetchRestCage() async {
    emit(RestCageLoading());

    final result = await _getCage(const Params(type: 'kandang_rehat'));

    result.fold((l) => emit(RestCageFailed(message: l.message)),
        (r) => emit(RestCageLoaded(cages: r)));
  }
}
