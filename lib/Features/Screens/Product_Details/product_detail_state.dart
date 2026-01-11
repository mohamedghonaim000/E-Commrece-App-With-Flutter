part of 'product_detail_cubit.dart';

@immutable
sealed class ProductDetailState {}

final class ProductDetailInitial extends ProductDetailState {}
final class ProductInitial extends ProductDetailState {}
final class ProductSucsses extends ProductDetailState {
  final ProductModel product;
  ProductSucsses({required this.product });
}
final class ProductLoading extends ProductDetailState {}
final class ProductFailuer extends ProductDetailState {
  final String Msg;
  ProductFailuer({required this.Msg});
}