import 'package:flutter/material.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/pages/cubit/cart_cubit.dart';
import 'package:pos/pages/cubit/diskon_cubit.dart';
import 'package:pos/pages/models/product_model.dart';
import 'package:pos/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/product_cubit.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<ProductCubit>().isSelected(product.id);
    int hargaSetelahDiskon = (product.harga_product - product.diskon_product);
    TextEditingController namaProductController = TextEditingController(text: '');
  TextEditingController hargaProductController = TextEditingController(text: '');
    return GestureDetector(
      onTap: () {
        context.read<ProductCubit>().selectProduct(product.id);
        context.read<ProductCubit>().selectNama(product.nama_product);
        context
            .read<BiayaCubit>()
            .hargaProduct(product.id, product.harga_product);
        context
            .read<DiskonCubit>()
            .diskonProduct(product.id, product.diskon_product);
        // context.read<CartCubit>().cartList(
        //       product.nama_product,
        //       product.harga_product,
        //     );
        //   context
        //       .read<BiayaCubit>()
        //       .diskonProduct(product.id, product.diskon_product);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        width: 200,
        height: 212,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: CardRadius,
          border: Border.all(
            width: 2,
            color: isSelected == true ? PrimaryMain : transparentColor,
          ),
          boxShadow: [
            BoxShadow(
              color: blackColor.withOpacity(0.05),
              blurRadius: 4,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 152,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(8),
                ),
                image: DecorationImage(
                  image: NetworkImage(product.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.nama_product,
                    style: TextL.copyWith(
                      color: Neutral100,
                      fontWeight: medium,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'IDR' + hargaSetelahDiskon.toString(),
                        style: TextM.copyWith(
                          color: Neutral90,
                          fontWeight: regular,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'IDR',
                        style: TextS.copyWith(
                          color: product.diskon == false
                              ? transparentColor
                              : Neutral70,
                          fontWeight: regular,
                          decoration: TextDecoration.lineThrough,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        product.harga_product.toString(),
                        style: TextS.copyWith(
                          color: product.diskon == false
                              ? transparentColor
                              : Neutral70,
                          fontWeight: regular,
                          decoration: TextDecoration.lineThrough,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
