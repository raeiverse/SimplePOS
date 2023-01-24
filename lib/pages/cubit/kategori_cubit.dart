import 'package:bloc/bloc.dart';

class KategoriCubit extends Cubit<int> {
  KategoriCubit() : super((0));
  void setPage(int NewPage) {
    emit(NewPage);
  }
}
