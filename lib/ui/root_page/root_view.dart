import 'package:e_shop/util/routes.dart';
import 'package:fcode_common/fcode_common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'root_page.dart';

class RootView extends StatefulWidget {
  @override
  _RootViewState createState() => _RootViewState();

  String email = "daham@gmail.com";
}

class _RootViewState extends State<RootView> {
  static final log = Log("RootView");

  @override
  Widget build(BuildContext context) {
    // final rootBloc = BlocProvider.of<RootBloc>(context);
    log.d("Loading Root View");
    CustomSnackBar customSnackBar;

    final progressBar = Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );

    final mainChild = Scaffold(body: Center());

    if (widget.email != null){
      (Future.microtask(
              () => Navigator.pushReplacementNamed(context, Routes.HOME_ROUTE)));
    }


    return MultiBlocListener(
      listeners: [
        BlocListener<RootBloc, RootState>(
          listenWhen: (pre, current) => pre.error != current.error,
          listener: (context, state) {
            if (state.error?.isNotEmpty ?? false) {
              customSnackBar?.showErrorSnackBar(state.error);
            } else {
              customSnackBar?.hideAll();
            }
          },
        ),
      ],
      child: mainChild,
    );
  }
}
