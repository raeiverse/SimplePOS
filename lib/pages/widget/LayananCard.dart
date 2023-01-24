import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/layanan_cubit.dart';

import '../../theme.dart';

class LayananCard extends StatelessWidget {
  final String id;

  const LayananCard({
    Key? key,
    required this.id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<LayananCubit>().isSelected(id);
    return GestureDetector(
      onTap: () {
        context.read<LayananCubit>().selectProduct(id);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 92,
            height: 40,
            decoration: BoxDecoration(
              color: isSelected == true ? transparentColor : PrimaryMain,
              border: Border.all(
                color: isSelected == true ? PrimaryMain : transparentColor,
              ),
              borderRadius: CardRadius,
            ),
            child: Center(
              child: Text(
                'Dive in',
                style: TextM.copyWith(
                  color: isSelected == true ? PrimaryMain : Neutral10,
                  fontWeight: regular,
                ),
              ),
            ),
          ),
          Container(
            width: 92,
            height: 40,
            decoration: BoxDecoration(
              color: isSelected == true ? PrimaryMain : transparentColor,
              border: Border.all(
                color: isSelected == true ? transparentColor : PrimaryMain,
              ),
              borderRadius: CardRadius,
            ),
            child: Center(
              child: Text(
                'Take away',
                style: TextM.copyWith(
                  color: isSelected == true ? Neutral10 : PrimaryMain,
                  fontWeight: regular,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
