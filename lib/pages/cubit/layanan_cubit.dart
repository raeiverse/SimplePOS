import 'package:bloc/bloc.dart';

class LayananCubit extends Cubit<List<String>> {
  LayananCubit() : super([]);
  void selectProduct(String id) {
    if (!isSelected(id)) {
      state.clear();
      state.add(id);
    } else {
      state.remove(id);
      state.add(id = 'dive_in');
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
