import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/pages/cubit/diskon_cubit.dart';
import 'package:pos/pages/cubit/jumlah_product_cubit.dart';
import 'package:pos/pages/cubit/product_cubit.dart';

import '../../../theme.dart';

class TempatSampahWidget extends StatelessWidget {
  final String id;
  final int HargaProduk;
  const TempatSampahWidget({
    Key? key,
    required this.id,
    required this.HargaProduk,
  });

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<ProductCubit>().isSelected(id);
    if (context.read<ProductCubit>().state.length < 1) {
      return GestureDetector(
        onTap: () {},
        child: Container(
          margin: EdgeInsets.only(top: 24),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isSelected == false ? Neutral40 : PrimaryMain,
            borderRadius: CardRadius,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/icon_bin.png',
              width: 20,
              height: 20,
              color: isSelected == false ? Neutral60 : Neutral10,
            ),
          ),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () {
          // context.read<ProductCubit>().state.clear();
          context.read<ProductCubit>().selectProduct(id);
          context.read<ProductCubit>().selectProduct(id);
          context.read<ProductCubit>().selectNama(id);
          context.read<ProductCubit>().selectNama(id);
          // context.read<BiayaCubit>().state.clear();
          context.read<BiayaCubit>().hargaProduct(id, HargaProduk);
          context.read<BiayaCubit>().hargaProduct(id, HargaProduk);
          // context.read<DiskonCubit>().state.clear();
          context.read<DiskonCubit>().diskonProduct(id, HargaProduk);
          context.read<DiskonCubit>().diskonProduct(id, HargaProduk);
          context.read<JumlahProductCubit>().resetJumlah();
        },
        child: Container(
          margin: EdgeInsets.only(top: 24),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: isSelected == true ? Neutral40 : PrimaryMain,
            borderRadius: CardRadius,
          ),
          child: Center(
            child: Image.asset(
              'assets/images/icon_bin.png',
              width: 20,
              height: 20,
              color: isSelected == true ? Neutral60 : Neutral10,
            ),
          ),
        ),
      );
    }
  }
}
