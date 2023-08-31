import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_states.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  static HomeCubit get(context) => BlocProvider.of(context);


}
