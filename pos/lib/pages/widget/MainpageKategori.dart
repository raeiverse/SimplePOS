import 'package:flutter/material.dart';
import 'package:pos/pages/widget/KategoriCard.dart';

import '../../theme.dart';

class MainpageKategori extends StatelessWidget {
  const MainpageKategori({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 40),
      width: MediaQuery.of(context).size.width / 1.5,
      height: 196,
      decoration: BoxDecoration(
        borderRadius: CardRadius,
        color: whiteColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Kategori',
                  style: HeadingM.copyWith(
                    color: Neutral100,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 4),
                      width: 207,
                      height: 32,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Cari Menu',
                          labelStyle: TextM.copyWith(
                            fontWeight: regular,
                            color: Neutral60,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        color: PrimaryMain,
                        borderRadius: CardRadius,
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/icon_search.png',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                children: [
                  KategoriCard(
                    index: 0,
                    imageUrl: 'assets/images/kategori_semua.png',
                    NamaKatagori: 'Semua',
                  ),
                  KategoriCard(
                    index: 1,
                    imageUrl: 'assets/images/kategori_KueKering.png',
                    NamaKatagori: 'Kue Kering',
                  ),
                  KategoriCard(
                    index: 2,
                    imageUrl: 'assets/images/kategori_Roti.png',
                    NamaKatagori: 'Roti',
                  ),
                  KategoriCard(
                    index: 3,
                    imageUrl: 'assets/images/kategori_Puding.png',
                    NamaKatagori: 'Puding',
                  ),
                  KategoriCard(
                    index: 4,
                    imageUrl: 'assets/images/kategori_Tart.png',
                    NamaKatagori: 'Tart',
                  ),
                  KategoriCard(
                    index: 5,
                    imageUrl: 'assets/images/kategori_Minum.png',
                    NamaKatagori: 'Minuman',
                  ),
                  KategoriCard(
                    index: 6,
                    imageUrl: 'assets/images/kategori_Biskuit.png',
                    NamaKatagori: 'Biskuit',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
