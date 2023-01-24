import 'package:equatable/equatable.dart';

class CartModel extends Equatable {
  final String id;
  final String nama_product;
  final int harga_product;

  CartModel({
    required this.id,
    required this.nama_product,
    required this.harga_product,
  });

  factory CartModel.fromJson(String id, Map<String, dynamic> json) => CartModel(
        id: id,
        nama_product: json['nama_product'],
        harga_product: json['harga_product'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        nama_product,
        harga_product,
      ];
}
