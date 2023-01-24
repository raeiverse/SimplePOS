import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/pembayaran_cubit.dart';

import '../../../theme.dart';

class BayarPesananWidget extends StatelessWidget {
  final String id;
  const BayarPesananWidget({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<PembayaranCubit>().isSelected(id);
    if (context.read<PembayaranCubit>().state.length < 1) {
      return Expanded(
        child: Container(
          margin: EdgeInsets.only(top: 24, left: 16),
          height: 40,
          decoration: BoxDecoration(
            color: isSelected == false ? Neutral40 : PrimaryMain,
            borderRadius: CardRadius,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Bayar Pesanan',
                style: TextL.copyWith(
                  color: isSelected == false ? Neutral60 : Neutral10,
                  fontWeight: medium,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Expanded(
        child: GestureDetector(
          onTap: () {
            //kosong
          },
          child: Container(
            margin: EdgeInsets.only(top: 24, left: 16),
            height: 40,
            decoration: BoxDecoration(
              color: isSelected == true ? Neutral40 : PrimaryMain,
              borderRadius: CardRadius,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Bayar Pesanan',
                  style: TextL.copyWith(
                    color: isSelected == true ? Neutral60 : Neutral10,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
