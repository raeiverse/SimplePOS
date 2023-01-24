import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/pembayaran_cubit.dart';
import 'package:pos/theme.dart';

class PembayaranWidget extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String jenisPembayaran;
  const PembayaranWidget({
    Key? key,
    required this.id,
    required this.imageUrl,
    required this.jenisPembayaran,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<PembayaranCubit>().isSelected(id);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              context.read<PembayaranCubit>().selectPembayaran(id);
            },
            child: Container(
              margin: EdgeInsets.only(top: 8),
              height: 64,
              decoration: BoxDecoration(
                color: isSelected == true ? PrimaryMain : transparentColor,
                border: Border.all(
                  color: PrimaryMain,
                ),
                borderRadius: CardRadius,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Center(
                      child: Image.asset(
                        imageUrl,
                        width: 32,
                        height: 32,
                        color: isSelected == true ? Neutral10 : PrimaryMain,
                      ),
                    ),
                  ),
                  Text(
                    jenisPembayaran,
                    style: TextM.copyWith(
                      color: isSelected == true ? Neutral10 : PrimaryMain,
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
