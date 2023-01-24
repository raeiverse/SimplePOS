import 'package:equatable/equatable.dart';

class ProductModel extends Equatable {
  final String id;
  final String imageUrl;
  final String nama_product;
  final int harga_product;
  final int diskon_product;
  final bool diskon;

  ProductModel({
    required this.id,
    required this.imageUrl,
    required this.nama_product,
    required this.harga_product,
    this.diskon_product = 0,
    this.diskon = false,
  });

  factory ProductModel.fromJson(String id, Map<String, dynamic> json) =>
      ProductModel(
        id: id,
        imageUrl: json['imageUrl'],
        nama_product: json['nama_product'],
        harga_product: json['harga_product'],
        diskon_product: json['diskon_product'],
        diskon: json['diskon'],
      );

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        imageUrl,
        nama_product,
        harga_product,
        diskon_product,
        diskon,
      ];
}
