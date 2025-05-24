import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tetbee__base/tetbee__base.dart';

class DataBuilder<T> extends StatefulWidget {
  const DataBuilder({
    super.key,
    this.loadingScreen,
    this.screenBuilder,
    this.isStream = false,
    this.appName,
    this.path,
    this.scrollDirection = Axis.vertical,
    this.isQuery = false,
    this.itemBuilder,
    this.screenHeight = 100,
    this.descending = true,
    this.orderBy = 'updatedAt',
    this.filter,
    this.addFormPath,
  });
  final Widget? loadingScreen;
  final bool isStream;
  final bool descending;
  final String orderBy;
  final String? path;
  final String? appName;
  final Widget Function(BuildContext, T)? screenBuilder;
  final Axis scrollDirection;
  final bool isQuery;
  final double screenHeight;
  final String? filter;
  final String? addFormPath;
  final Widget Function(BuildContext, Map<String, dynamic>, String)?
  itemBuilder;

  @override
  State<DataBuilder<T>> createState() => _DataBuilderState<T>();
}

class _DataBuilderState<T> extends State<DataBuilder<T>> {
  Widget builder(BuildContext context, dynamic document) {
    if (widget.isQuery) {
      AsyncSnapshot<QuerySnapshot<Object?>> querySnapshot = document;
      if (!querySnapshot.hasData) {
        return widget.loadingScreen ??
            const Center(child: CircularProgressIndicator());
      } else {
        Widget child = ListView(
          scrollDirection: widget.scrollDirection,
          children: [
            ...querySnapshot.data!.docs.map(
              (e) => widget.itemBuilder!(
                context,
                e.data() as Map<String, dynamic>,
                e.id,
              ),
            ),
            if (widget.addFormPath != null)
              HomeButton(
                iconData: Icons.add,
                onTap: () {
                  // goRouterPush(context, widget.addFormPath!);
                },
              ),
          ],
        );
        if (querySnapshot.data!.docs.isNotEmpty) {
          return widget.scrollDirection == Axis.horizontal
              ? SizedBox(height: widget.screenHeight, child: child)
              : Expanded(child: child);
        } else {
          return widget.addFormPath != null
              ? HomeButton(
                iconData: Icons.add,
                onTap: () {
                  context.go(widget.addFormPath!);
                },
              )
              : const Text('No Document');
        }
      }
    } else {
      AsyncSnapshot<DocumentSnapshot<Object?>> doc = document;
      if (!doc.hasData) {
        return widget.loadingScreen ??
            const Center(child: CircularProgressIndicator());
      } else {
        if (doc.data!.exists) {
          return widget.screenBuilder!(context, parseData<T>(doc.data!));
        } else {
          return widget.screenBuilder!(context, parseData<T>(doc.data!));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return widget.isStream
        ? widget.isQuery
            ? StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance
                      .collection(widget.path!)
                      .where('owners', arrayContains: widget.filter)
                      .orderBy(widget.orderBy, descending: widget.descending)
                      .snapshots(),
              builder: builder,
            )
            : StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance.doc(widget.path!).snapshots(),
              builder: builder,
            )
        : widget.isQuery
        ? StreamBuilder<QuerySnapshot>(
          stream:
              FirebaseFirestore.instance
                  .collection(widget.path!)
                  .orderBy(widget.orderBy, descending: widget.descending)
                  .snapshots(),
          builder: builder,
        )
        : FutureBuilder<DocumentSnapshot>(
          future: FirebaseFirestore.instance.doc(widget.path!).get(),
          builder: builder,
        );
  }
}
