import 'dart:convert';

import 'package:bloc/bloc.dart';

class BiayaCubit extends Cubit<List<dynamic>> {
  double subtotal = 0;
  double discount = 0;
  BiayaCubit() : super([]);
  hargaProduct(
    String id,
    int HargaProduk,
  ) {
    if (!isSelected(id)) {
      state.add(id);
      state.add(HargaProduk);
      subtotal = subtotal + HargaProduk;
    } else if (id == 'clear') {
      subtotal = 0;
      state.clear();
    } else {
      subtotal = subtotal - HargaProduk;
      state.remove(id);
      state.remove(HargaProduk);
    }
    // print('Harga');
    // print(state);
    emit(List.from(state));
  }

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }
}
