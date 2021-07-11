import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:io';

class AdaptiveTextButton extends StatelessWidget {
  final String titleBtn;
  final Function showDatePicker;

  AdaptiveTextButton({this.titleBtn, this.showDatePicker});
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              titleBtn,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
            onPressed: showDatePicker,
          )
        : TextButton(
            onPressed: showDatePicker,
            child: Text(
              titleBtn,
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          );
  }
}
