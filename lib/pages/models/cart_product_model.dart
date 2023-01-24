import 'package:equatable/equatable.dart';
import 'package:pos/pages/models/product_model.dart';

class CartProductsModel extends Equatable {
  final List<ProductModel> products;

  const CartProductsModel({this.products = const <ProductModel>[]});

  double get subtotal =>
      products.fold(0, (total, current) => total + current.harga_product);
  @override
  // TODO: implement props
  List<Object?> get props => [products];
}
