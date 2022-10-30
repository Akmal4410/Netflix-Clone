import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix_project/domain/new_and_hot/new_and_hot_services.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final NewAndHotServices _homeServices;
  HomeBloc(this._homeServices) : super(_Initial()) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
