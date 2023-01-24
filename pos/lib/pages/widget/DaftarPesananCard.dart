import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/pages/cubit/cart_cubit.dart';
import 'package:pos/pages/cubit/product_cubit.dart';
import 'package:pos/pages/models/product_model.dart';

import '../../theme.dart';
import '../cubit/jumlah_product_cubit.dart';

class DaftarPesananCard extends StatelessWidget {
  const DaftarPesananCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int jumlah = context.watch<JumlahProductCubit>().jumlah;
    return Wrap(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/icon_delete.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                  SizedBox(width: 4),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        context.watch<ProductCubit>().namaProduk,
                        style: TextS.copyWith(
                          color: Neutral90,
                          fontWeight: medium,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      Text(
                        'IDR' +
                            (context.watch<BiayaCubit>().subtotal * jumlah)
                                .toStringAsFixed(0),
                        style: TextS.copyWith(
                          color: Neutral70,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<JumlahProductCubit>().kurangProduct();
                  },
                  child: Image.asset(
                    'assets/images/icon_min.png',
                    width: 24,
                    height: 24,
                  ),
                ),
                SizedBox(width: 4),
                Text(
                  context.watch<JumlahProductCubit>().jumlah.toString(),
                  style: TextS.copyWith(
                    color: Neutral70,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(width: 4),
                GestureDetector(
                  onTap: () {
                    context.read<JumlahProductCubit>().tambahProduct();
                  },
                  child: Image.asset(
                    'assets/images/icon_plus.png',
                    width: 24,
                    height: 24,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
