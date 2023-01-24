import 'package:bloc/bloc.dart';

class JumlahProductCubit extends Cubit<int> {
  JumlahProductCubit() : super((0));
  int jumlah = 1;

  resetJumlah() {
    jumlah = 1;
  }

  tambahProduct() {
    print(jumlah);
    emit(jumlah = jumlah + 1);
  }

  kurangProduct() {
    if (jumlah == 0) {
      print(jumlah);
      emit(jumlah = jumlah = 0);
    } else {
      print(jumlah);
      emit(jumlah = jumlah - 1);
    }
  }
}
