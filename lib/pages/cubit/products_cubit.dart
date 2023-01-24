import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pos/pages/models/product_model.dart';
import 'package:pos/pages/services/product_services.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());

  void fetchProducts() async {
    try {
      emit(ProductsLoading());
      List<ProductModel> products = await ProductServices().fetchProducts();
      emit(ProductsSuccess(products));
    } catch (e) {
      emit(
        ProductsFailed(
          e.toString(),
        ),
      );
    }
    print(state);
  }
}
