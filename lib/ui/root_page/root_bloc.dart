import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'root_page.dart';

class RootBloc extends Bloc<RootEvent, RootState> {
  RootBloc(BuildContext context) : super(RootState.init()) {
  }
  @override
  Stream<RootState> mapEventToState(RootEvent event) {}
}
