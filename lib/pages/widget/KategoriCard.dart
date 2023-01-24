import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/kategori_cubit.dart';

import '../../theme.dart';

class KategoriCard extends StatelessWidget {
  final int index;
  final String imageUrl;
  final String NamaKatagori;
  const KategoriCard({
    Key? key,
    required this.imageUrl,
    required this.NamaKatagori,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: GestureDetector(
        onTap: () {
          context.read<KategoriCubit>().setPage(index);
        },
        child: Container(
          width: 110,
          height: 112,
          decoration: BoxDecoration(
            color: context.read<KategoriCubit>().state == index
                ? PrimaryMain
                : transparentColor,
            borderRadius: CardRadius,
            border: Border.all(color: PrimaryMain),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageUrl,
                color: context.read<KategoriCubit>().state == index
                    ? Neutral10
                    : PrimaryMain,
                width: 44,
                height: 44,
              ),
              Text(
                NamaKatagori,
                style: TextL.copyWith(
                  color: context.read<KategoriCubit>().state == index
                      ? Neutral10
                      : Neutral90,
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
