import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as anido;

class SimpleNewTag extends StatelessWidget {
  final String? title;
  final bool isSmallSize;
  final double size;
  const SimpleNewTag({
    super.key,
    this.title,
    this.isSmallSize = false,
    this.size = 22,
  });

  @override
  Widget build(BuildContext context) {
    return anido.JelloIn(
      child: Container(
        height: size,
        width: size,
        decoration: BoxDecoration(
          // gradient: LinearGradient(
          //   begin: Alignment.topLeft,
          //   end: Alignment.bottomRight,
          //   colors: [
          //     Theme.of(context).primaryColorLight,
          //     Colors.white,
          //   ],
          // ),
          color: Theme.of(context).primaryColorLight,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            title ?? '',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: isSmallSize ? 5 : 10,
              color: Theme.of(context).primaryTextTheme.headlineLarge!.color,
            ),
          ),
        ),
      ),
    );
  }
}
