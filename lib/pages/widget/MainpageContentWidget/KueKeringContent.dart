import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos/pages/cubit/products_cubit.dart';
import 'package:pos/pages/models/product_model.dart';

import '../../../theme.dart';
import '../ProductCard.dart';

class KueKeringContent extends StatefulWidget {
  const KueKeringContent({super.key});

  @override
  State<KueKeringContent> createState() => _KueKeringContentState();
}

class _KueKeringContentState extends State<KueKeringContent> {
  @override
  void initState() {
    context.read<ProductsCubit>().fetchProducts();
    super.initState();
  }

  Widget Content(List<ProductModel> products) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Text(
                  'Kue Kering',
                  style: HeadingM.copyWith(
                    color: Neutral100,
                  ),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 4),
              child: Row(
                children: products.map((ProductModel product) {
                  return ProductCard(product: product);
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
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
          return Content(state.products);
        }
        return Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
