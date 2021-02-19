import 'package:flutter/cupertino.dart';

@immutable
class RootState {
  final String error;

  RootState({@required this.error});

  RootState.init() : this(error: null);

  RootState clone({
    String error,
  }) {
    return RootState(
      error: error ?? this.error,
    );
  }
}
