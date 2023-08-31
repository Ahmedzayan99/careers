import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'transactions_states.dart';

class TransactionsCubit extends Cubit<TransactionsState> {
  TransactionsCubit() : super(TransactionsInitial());

  static TransactionsCubit get(context) => BlocProvider.of(context);
  int current = 0;
  void changeIndex(int index) {
    current = index;
    emit(ChangeIndexTopBarState());
  }

}
