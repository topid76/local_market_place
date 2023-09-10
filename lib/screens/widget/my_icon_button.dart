import 'package:flutter/material.dart';

class MyIconButton extends StatelessWidget {
  late VoidCallback onPressed;
  final icon;
  MyIconButton({required this.onPressed, required this.icon});
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: icon);
  }
}
