import 'package:exercise1/ui/common/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

typedef StandardRadioCallback = void Function(int);

class Ex1RadioButton extends StatelessWidget {
  final String label;
  final StandardRadioCallback onPressed;
  final bool isSelected;
  final int ordinal;

  Ex1RadioButton({
    required this.label,
    required this.onPressed,
    required this.ordinal,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: Constants.stdButtonHeight,
      child: RaisedButton(
        padding: EdgeInsets.all(10),
        elevation: isSelected ? null : 0,
        color: isSelected ? Constants.primaryColor : Colors.white,
        onPressed: () {
          onPressed(ordinal);
        },
        child: FittedBox(
          child: Text(
            label,
            style: isSelected
                ? Constants.defaultButtonTextStyle
                : TextStyle(
                    fontSize: 20,
                    color: Constants.primaryColor,
                  ),
          ),
        ),
      ),
    );
  }
}
