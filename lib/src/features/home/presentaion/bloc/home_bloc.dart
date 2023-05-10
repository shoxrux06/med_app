import 'package:bloc/bloc.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {

    on<SelectLocationEvent>((event, emit) {
      emit(
        HomeState(
          recordModel: state.recordModel
        )
      );
    });
  }
}
