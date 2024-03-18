import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mustika_farm/features/cage/domain/usecases/get_cage.dart';

import '../../domain/entities/cage.dart';

part 'active_cage_state.dart';

class ActiveCageCubit extends Cubit<ActiveCageState> {
  final GetCage _getCage;

  ActiveCageCubit({required GetCage getCage})
      : _getCage = getCage,
        super(ActiveCageInitial());

  void fetchActiveCage() async {
    emit(ActiveCageLoading());

    final result = await _getCage(const Params(type: 'kandang_aktif'));

    result.fold((l) => emit(ActiveCageFailed(message: l.message)),
        (r) => emit(ActiveCageLoaded(cages: r)));
  }
}
