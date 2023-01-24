import 'dart:convert';

import 'package:bloc/bloc.dart';

class DiskonCubit extends Cubit<List<dynamic>> {
  double discount = 0;
  DiskonCubit() : super([]);

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  diskonProduct(
    String id,
    int diskon_product,
  ) {
    if (!isSelected(id)) {
      state.add(id);
      state.add(diskon_product);
      discount = discount + diskon_product;
    } else if (id == 'clear') {
      discount = 0;
      state.clear();
    } else {
      discount = discount - diskon_product;
      state.remove(id);
      state.remove(diskon_product);
    }
    // print('Harga');
    // print(state);
    emit(List.from(state));
  }
}
