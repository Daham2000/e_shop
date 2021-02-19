import 'package:e_shop/ui/home_page/home_event.dart';
import 'package:e_shop/ui/home_page/home_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeBloc(BuildContext context) : super(HomeState.initialState);

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) {

  }

}