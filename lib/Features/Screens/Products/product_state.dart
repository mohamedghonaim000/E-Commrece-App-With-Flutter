part of 'product_cubit.dart';

@immutable
sealed class ProductState {}

final class ProductInitial extends ProductState {}
final class ProductSucsses extends ProductState {
  final List<ProductModel>products;
  ProductSucsses({required this.products });
}
final class ProductLoading extends ProductState {}
final class ProductFailuer extends ProductState {
  final String Msg;
  ProductFailuer({required this.Msg});
}




