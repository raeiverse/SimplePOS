import 'package:bloc/bloc.dart';

class PembayaranCubit extends Cubit<List<String>> {
  PembayaranCubit() : super([]);
  void selectPembayaran(String id) {
    if (!isSelected(id)) {
      state.clear();
      state.add(id);
    } else {
      state.remove(id);
    }
    print(state);
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
