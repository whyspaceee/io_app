part of 'flora_search_cubit.dart';

class FloraSearchState extends Equatable {
  final List<EntityModel> floraList;

  const FloraSearchState({required this.floraList});

  @override
  List<Object> get props => [floraList];
}
