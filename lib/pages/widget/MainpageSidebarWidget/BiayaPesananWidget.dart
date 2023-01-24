import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/diskon_cubit.dart';
import 'package:pos/pages/cubit/jumlah_product_cubit.dart';
import 'package:pos/pages/cubit/product_cubit.dart';

import '../../../theme.dart';
import '../../cubit/biaya_cubit.dart';
import '../DeviderWidget.dart';

class BiayaPesananWidget extends StatelessWidget {
  const BiayaPesananWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double subtotal = (context.watch<BiayaCubit>().subtotal *
        context.watch<JumlahProductCubit>().jumlah);
    double tax = (context.watch<BiayaCubit>().subtotal *
            context.watch<JumlahProductCubit>().jumlah) *
        0.1;
    double diskon = (context.watch<DiskonCubit>().discount *
        context.watch<JumlahProductCubit>().jumlah);
    double total = subtotal + tax - diskon;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Subtotal',
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
            Text(
              subtotal.toStringAsFixed(0),
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
          ],
        ),
        SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax',
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
            Text(
              '10%',
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
          ],
        ),
        SizedBox(height: 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Discount',
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
            Text(
              diskon.toStringAsFixed(0),
              style: TextM.copyWith(
                color: Neutral80,
                fontWeight: medium,
              ),
            ),
          ],
        ),
        DeviderWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Total',
              style: TextL.copyWith(
                color: Neutral100,
                fontWeight: medium,
              ),
            ),
            Text(
              total.toStringAsFixed(0),
              style: TextL.copyWith(
                color: PrimaryMain,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
