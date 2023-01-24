import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/pages/cubit/jumlah_product_cubit.dart';
import 'package:pos/pages/cubit/product_cubit.dart';
import 'package:pos/pages/widget/DaftarPesananCard.dart';

import '../../../theme.dart';
import '../../cubit/products_cubit.dart';
import '../../models/product_model.dart';

class DaftarPesananWidget extends StatelessWidget {
  const DaftarPesananWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget Content() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        children: [
          DaftarPesananCard(),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    int jumlah = context.watch<JumlahProductCubit>().jumlah;
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        // TODO: implement listener
        if (state is ProductsFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: Colors.red,
              content: Text(state.error),
            ),
          );
        }
      },
      builder: (context, state) {
        if (state is ProductsSuccess) {
          if (context.watch<ProductCubit>().state.length < 1) {
            return Container(
              margin: EdgeInsets.only(top: 32, bottom: 20),
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/icon_pesanan.png',
                      width: 132,
                      height: 84,
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Masukkan pesanan dengan menekan menu disamping',
                    style: TextL.copyWith(
                      color: Neutral70,
                      fontWeight: regular,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          } else {
            return Content();
          }
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
