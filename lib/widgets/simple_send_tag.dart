import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as anido;

class SimpleSentTag extends StatelessWidget {
  final bool useBounce;
  const SimpleSentTag({super.key, this.useBounce = true});

  @override
  Widget build(BuildContext context) {
    Widget widget = Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Sent',
          style: Theme.of(context).primaryTextTheme.displaySmall,
        ),
      ),
    );
    return useBounce ? anido.Bounce(child: widget) : widget;
  }
}
