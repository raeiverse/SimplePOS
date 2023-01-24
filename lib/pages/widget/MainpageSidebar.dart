import 'package:flutter/material.dart';
import 'package:pos/pages/widget/DeviderWidget.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/PembayaranWidget.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/BayarPesananWidget.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/BiayaPesananWidget.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/DaftarPesananWidget.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/TempatSampahWidget.dart';

import '../../theme.dart';
import 'LayananCard.dart';

class MainpageSidebar extends StatelessWidget {
  const MainpageSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: MediaQuery.of(context).size.width / 4.1,
        decoration: BoxDecoration(
          color: Neutral10,
          borderRadius: CardRadius,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail Order',
                  style: HeadingM.copyWith(
                    color: Neutral100,
                  ),
                ),
                DeviderWidget(),
                Text(
                  'Order #15',
                  style: TextL.copyWith(
                    color: Neutral100,
                    fontWeight: medium,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Minggu, 08 Januari 2023',
                      style: TextS.copyWith(
                        color: Neutral60,
                        fontWeight: regular,
                      ),
                    ),
                    Text(
                      '12.45',
                      style: TextS.copyWith(
                        color: Neutral60,
                        fontWeight: regular,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  'Layanan',
                  style: TextL.copyWith(
                    color: Neutral100,
                    fontWeight: medium,
                  ),
                ),
                SizedBox(height: 8),
                LayananCard(id: 'take_away'),
                SizedBox(height: 16),
                Text(
                  'Nama',
                  style: TextL.copyWith(
                    color: Neutral100,
                    fontWeight: medium,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 36,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: CardRadius,
                      ),
                      labelText: 'Nama kostumer',
                      labelStyle: TextM.copyWith(
                        color: Neutral60,
                        fontWeight: regular,
                      ),
                    ),
                  ),
                ),
                DeviderWidget(),
                Text(
                  'Daftar pesanan',
                  style: TextL.copyWith(
                    color: Neutral100,
                    fontWeight: medium,
                  ),
                ),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DaftarPesananWidget(),
                      DeviderWidget(),
                      BiayaPesananWidget(),
                      SizedBox(height: 24),
                      Text(
                        'Pembayaran',
                        style: TextL.copyWith(
                          color: Neutral100,
                          fontWeight: medium,
                        ),
                      ),
                      PembayaranWidget(
                        id: 'tunai',
                        imageUrl: 'assets/images/icon_tunai.png',
                        jenisPembayaran: 'Tunai',
                      ),
                      PembayaranWidget(
                        id: 'ewallet',
                        imageUrl: 'assets/images/icon_ewallet.png',
                        jenisPembayaran: 'E-Wallet',
                      ),
                      PembayaranWidget(
                        id: 'debit',
                        imageUrl: 'assets/images/icon_debit.png',
                        jenisPembayaran: 'Debit',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TempatSampahWidget(
                            id: 'clear',
                            HargaProduk: -2,
                          ),
                          BayarPesananWidget(id: 'pembayaran'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
