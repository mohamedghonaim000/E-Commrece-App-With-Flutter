part of 'home_cubit.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}
class HomeLoading extends HomeState{}
class HomeSuccess extends HomeState{
  final List<CategoryModel> list;
  HomeSuccess(this.list);
}
class HomeFailure extends HomeState{
  final String errMsg;
  HomeFailure(this.errMsg);
}