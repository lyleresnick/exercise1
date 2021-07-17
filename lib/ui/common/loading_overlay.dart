import 'package:flutter/material.dart';
import 'constants.dart';

class LoadingOverlay extends StatelessWidget {
  final Color color;
  LoadingOverlay({this.color = Colors.black26});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: color,
      child: Center(
          child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation<Color>(Constants.primaryColor),
      )),
    );
  }
}
