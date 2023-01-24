import 'package:bloc/bloc.dart';

class ProductCubit extends Cubit<List<dynamic>> {
  String namaProduk = '';
  ProductCubit() : super([]);

  bool isSelected(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  bool isSelect(String id) {
    int index = state.indexOf(id);
    if (index == -1) {
      return false;
    } else {
      return true;
    }
  }

  selectProduct(String id) {
    if (!isSelected(id)) {
      state.add(id);
    } else if (id == 'clear') {
      state.clear();
    } else {
      state.remove(id);
    }
    // print('select');
    // print(id);
    emit(List.from(state));
  }

  selectNama(String NamaProduk) {
    if (!isSelected(NamaProduk)) {
      state.add(NamaProduk);
      namaProduk = NamaProduk;
    } else if (NamaProduk == 'clear') {
      state.clear();
    } else {
      state.remove(NamaProduk);
    }
    // print('nama');
    // print(namaProduk);
    emit(List.from(state));
  }
}
