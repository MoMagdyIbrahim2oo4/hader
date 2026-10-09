import 'package:flutter/material.dart';

class CustomElevatedButtom extends StatelessWidget {
  final void Function() onPressed;
  final Widget child;
  const CustomElevatedButtom({super.key,required this.onPressed,required this.child});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
       child: child
       );
  }
}