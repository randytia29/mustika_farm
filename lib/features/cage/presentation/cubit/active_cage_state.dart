part of 'active_cage_cubit.dart';

sealed class ActiveCageState extends Equatable {
  const ActiveCageState();

  @override
  List<Object> get props => [];
}

final class ActiveCageInitial extends ActiveCageState {}

final class ActiveCageLoading extends ActiveCageState {}

final class ActiveCageLoaded extends ActiveCageState {
  final List<Cage> cages;

  const ActiveCageLoaded({required this.cages});

  @override
  List<Object> get props => [cages];
}

final class ActiveCageFailed extends ActiveCageState {
  final String message;

  const ActiveCageFailed({required this.message});

  @override
  List<Object> get props => [message];
}
