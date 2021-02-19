import 'package:fcode_common/fcode_common.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  static final log = Log("HomeView");
  static final loadingWidget = Center(
    child: CircularProgressIndicator(),
  );

  @override
  Widget build(BuildContext context) {
    log.d("Loading Home View");
    CustomSnackBar customSnackBar;
    return Scaffold(
      appBar: AppBar(
        backwardsCompatibility: true,
      ),
      body: Text(
        "Hello"
      ),
    );
  }
}
