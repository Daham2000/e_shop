import 'package:e_shop/theme/primary_theme.dart';
import 'package:e_shop/ui/root_page/root_page.dart';
import 'package:e_shop/util/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-shop",
      theme: PrimaryTheme.generateTheme(context),
      home: RootView(),
      onGenerateRoute: Routes.generator,
    );

    // return MultiBlocProvider(providers: <BlocProvider>[
    //   // BlocProvider<RootBloc>(create: (context) => RootState()),
    // ], child: materialApp);
  }
}
