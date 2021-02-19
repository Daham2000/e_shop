import 'package:flutter_bloc/flutter_bloc.dart';

import 'root_page.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc(RootState initialState) : super(initialState);

  @override
  Stream<RootState> mapEventToState(RootEvent event) {}
}
