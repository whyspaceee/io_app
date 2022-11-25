part of 'fauna_search_cubit.dart';

class FaunaSearchState extends Equatable {
  final List<EntityModel> faunaList;

  const FaunaSearchState({required this.faunaList});

  @override
  List<Object> get props => [faunaList];
}
