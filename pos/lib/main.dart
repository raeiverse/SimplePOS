import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/biaya_cubit.dart';
import 'package:pos/pages/cubit/cart_cubit.dart';
import 'package:pos/pages/cubit/diskon_cubit.dart';
import 'package:pos/pages/cubit/jumlah_product_cubit.dart';
import 'package:pos/pages/cubit/kategori_cubit.dart';
import 'package:pos/pages/cubit/layanan_cubit.dart';
import 'package:pos/pages/cubit/pembayaran_cubit.dart';
import 'package:pos/pages/cubit/product_cubit.dart';
import 'package:pos/pages/cubit/products_cubit.dart';
import 'package:pos/pages/mainpage.dart';
import 'package:pos/pages/widget/MainpageSidebarWidget/PembayaranWidget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => KategoriCubit(),
        ),
        BlocProvider(
          create: (context) => ProductCubit(),
        ),
        BlocProvider(
          create: (context) => ProductsCubit(),
        ),
        BlocProvider(
          create: (context) => LayananCubit(),
        ),
        BlocProvider(
          create: (context) => PembayaranCubit(),
        ),
        BlocProvider(
          create: (context) => JumlahProductCubit(),
        ),
        BlocProvider(
          create: (context) => BiayaCubit(),
        ),
        BlocProvider(
          create: (context) => DiskonCubit(),
        ),
        BlocProvider(
          create: (context) => CartCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Mainpage(),
      ),
    );
  }
}
