import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/kategori_cubit.dart';
import 'package:pos/pages/widget/MainpageContentWidget/KueKeringContent.dart';
import 'package:pos/pages/widget/MainpageContentWidget/PromoContent.dart';
import 'package:pos/pages/widget/MainpageContentWidget/RekomendasiContent.dart';
import 'package:pos/pages/widget/ProductCard.dart';

import '../../theme.dart';

class MainpageContent extends StatelessWidget {
  const MainpageContent({super.key});

  @override
  Widget BuildContent(int CurrentIndex) {
    switch (CurrentIndex) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // RekomendasiContent(),
            // PromoContent(),
            KueKeringContent(),
          ],
        );
      case 1:
        return Column(
          children: [
            KueKeringContent(),
          ],
        );
      default:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // RekomendasiContent(),
            // PromoContent(),
          ],
        );
    }
  }

  Widget build(BuildContext context) {
    return BlocBuilder<KategoriCubit, int>(
      builder: (context, CurrentIndex) {
        return Container(
          margin: EdgeInsets.only(top: 24, left: 40),
          width: MediaQuery.of(context).size.width / 1.5,
          decoration: BoxDecoration(
            borderRadius: CardRadius,
            color: whiteColor,
          ),
          child: Container(
            margin: EdgeInsets.only(bottom: 16),
            child: BuildContent(CurrentIndex),
          ),
        );
      },
    );
  }
}
