import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/kategori_cubit.dart';
import 'package:pos/pages/widget/KategoriCard.dart';
import 'package:pos/pages/widget/LayananCard.dart';
import 'package:pos/pages/widget/MainpageContent.dart';
import 'package:pos/pages/widget/MainpageSidebar.dart';
import 'package:pos/pages/widget/MainpageHeader.dart';
import 'package:pos/pages/widget/MainpageKategori.dart';
import 'package:pos/pages/widget/ProductCard.dart';
import 'package:pos/theme.dart';

import 'cubit/products_cubit.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<KategoriCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Neutral20,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MainpageHeader(),
                        MainpageKategori(),
                        MainpageContent(),
                        SizedBox(height: 32),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 32),
                          child: MainpageSidebar(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
