import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart' as anido;

class TagStreamWidget extends StatelessWidget {
  final int? initialCount;

  final Stream<QuerySnapshot<Object?>> stream;
  final int Function(AsyncSnapshot<QuerySnapshot<Object?>> docs)? getCount;
  const TagStreamWidget({
    super.key,
    required this.stream,
    this.getCount,
    this.initialCount,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: stream,
      builder: (context, docs) {
        if (!docs.hasData) {
          return const SizedBox.shrink();
        }

        int count =
            getCount != null
                ? getCount!(docs)
                : docs.data!.docs.length + (initialCount ?? 0);
        return anido.JelloIn(child: TagWidget(height: 20, count: count));
      },
    );
  }
}

class TagWidget extends StatelessWidget {
  final double height;
  final int? count;
  const TagWidget({super.key, this.count, this.height = 20});

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecoration = BoxDecoration(
      color: Theme.of(context).primaryColorLight,
      borderRadius: BorderRadius.circular(100),
    );
    TextStyle textStyle = TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: height / 2,
    );
    return count == null
        ? Container(
          height: height,
          width: height,
          decoration: boxDecoration,
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text('N', style: textStyle),
          ),
        )
        : count == 0
        ? const SizedBox.shrink()
        : Container(
          height: height,
          width: height,
          decoration: boxDecoration,
          child: Center(child: Text(count.toString(), style: textStyle)),
        );
  }
}
