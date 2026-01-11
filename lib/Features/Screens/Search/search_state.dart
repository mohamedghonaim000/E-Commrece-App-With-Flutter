part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
class SearchLoading extends SearchState{}
class SearchSuccess extends SearchState{
  final List<ProductModel> list;
  SearchSuccess(this.list);
}
class SearchFailure extends SearchState{
  final String errMsg;
  SearchFailure(this.errMsg);
}