import 'package:flutter/material.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/product_cubit.dart';

class ProductCard extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String NamaProduk;
  final int HargaProduk;
  final bool Diskon;
  final int NilaiDiskon;
  const ProductCard({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.NamaProduk,
    required this.HargaProduk,
    this.Diskon = false,
    this.NilaiDiskon = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<ProductCubit>().isSelected(id);
    return GestureDetector(
      onTap: () {
        // context.read<ProductCubit>().selectProduct(id);
        // context.read<ProductCubit>().selectNama(NamaProduk);
        // context.read<BiayaCubit>().hargaProduct(HargaProduk);
        // context.read<BiayaCubit>().selectDiskon(NilaiDiskon);
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
                  image: AssetImage(imageUrl),
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
                    NamaProduk,
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
                        'IDR' + HargaProduk.toString(),
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
                          color: Diskon == false ? transparentColor : Neutral70,
                          fontWeight: regular,
                          decoration: TextDecoration.lineThrough,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      Text(
                        (HargaProduk + NilaiDiskon).toString(),
                        style: TextS.copyWith(
                          color: Diskon == false ? transparentColor : Neutral70,
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
