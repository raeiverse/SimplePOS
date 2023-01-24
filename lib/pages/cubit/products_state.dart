part of 'products_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsSuccess extends ProductsState {
  final List<ProductModel> products;
  ProductsSuccess(this.products);

  @override
  // TODO: implement props
  List<Object> get props => [products];
}

class ProductsFailed extends ProductsState {
  final String error;
  ProductsFailed(this.error);

  @override
  // TODO: implement props
  List<Object> get props => [error];
}
