import 'package:exercise1/ui/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ex1Button extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool enabled;

  Ex1Button({
    required this.label,
    required this.onPressed,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Constants.stdButtonHeight,
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        color: Constants.primaryColor,
        disabledColor: Constants.colorDisabled,
        onPressed: enabled ? onPressed : null,
        child: FittedBox(
          child: Text(
            label,
            style: Constants.defaultButtonTextStyle,
          ),
        ),
      ),
    );
  }
}
