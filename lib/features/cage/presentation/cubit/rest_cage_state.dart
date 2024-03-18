part of 'rest_cage_cubit.dart';

sealed class RestCageState extends Equatable {
  const RestCageState();

  @override
  List<Object> get props => [];
}

final class RestCageInitial extends RestCageState {}

final class RestCageLoading extends RestCageState {}

final class RestCageLoaded extends RestCageState {
  final List<Cage> cages;

  const RestCageLoaded({required this.cages});

  @override
  List<Object> get props => [cages];
}

final class RestCageFailed extends RestCageState {
  final String message;

  const RestCageFailed({required this.message});

  @override
  List<Object> get props => [message];
}
