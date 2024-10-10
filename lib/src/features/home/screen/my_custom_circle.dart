import 'package:flutter/material.dart';

class MyCustomCircle extends StatelessWidget {
  const MyCustomCircle({
    super.key,
    required this.onTap,
    required this.child,
  });

  final Widget child;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(50),
          child: child,
        ),
      ),
    );
  }
}
