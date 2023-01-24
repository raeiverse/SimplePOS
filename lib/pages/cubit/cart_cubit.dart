import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:pos/pages/models/cart_model.dart';
import 'package:pos/pages/models/product_model.dart';
import 'package:pos/pages/services/cart_services.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<List<dynamic>> {
  CartCubit() : super([]);
  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
