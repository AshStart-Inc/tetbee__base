// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls, prefer_is_empty, prefer_const_constructors_in_immutables, curly_braces_in_flow_control_structures, empty_catches, prefer_final_fields, deprecated_member_use

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipe_action_cell/core/cell.dart';
import 'package:tetbee__base/utils/helper.dart';

class StreamPaginationScrollView extends StatefulWidget {
  final List<Widget>? onTopWidget;
  final List<String>? blockingRemoceDocId;
  final bool isChatRoom;
  final bool isRevers;
  final int initialDocumentLimit;
  final Query query;
  final Widget Function(DocumentSnapshot, Map<String, dynamic>)? getItem;
  final bool refreshRequired;
  final bool updatedValues;
  final bool isLoadingWidgetRequired;
  final Alignment? loadingWidgetAlignment;
  final Axis scrollDirection;
  final double? height;
  final bool showProgressIndicator;
  final bool showCount;
  final String? countText;
  final bool removeCell;
  final bool useImpact;
  final String orderBy;
  final String? emptyText;
  final bool needBottomSizedBox;
  final bool useEmpty;
  final Function(Map<String, dynamic>, String)? onRemove;

  final Widget Function(BuildContext, AsyncSnapshot<QuerySnapshot<Object?>>)?
  builder;
  StreamPaginationScrollView({
    Key? key,
    this.useEmpty = true,
    this.useImpact = false,
    this.removeCell = false,
    this.needBottomSizedBox = true,
    this.initialDocumentLimit = 4,
    this.isChatRoom = false,
    required this.query,
    this.onTopWidget,
    this.getItem,
    this.emptyText,
    this.builder,
    this.isRevers = false,
    this.refreshRequired = false,
    this.updatedValues = true,
    this.isLoadingWidgetRequired = true,
    this.loadingWidgetAlignment,
    this.scrollDirection = Axis.vertical,
    this.height,
    this.showProgressIndicator = false,
    this.onRemove,
    this.blockingRemoceDocId,
    this.showCount = false,
    this.countText,
    this.orderBy = 'createdAt',
  }) : super(key: key);

  @override
  _StreamPaginationScrollViewState createState() =>
      _StreamPaginationScrollViewState();
}

class _StreamPaginationScrollViewState
    extends State<StreamPaginationScrollView> {
  // late StreamController<List<DocumentSnapshot>>? _streamController;
  bool hasData = true;

  // Map<String, DocumentSnapshot> _itemMap = {};
  // bool _isRequesting = false;
  // bool _isFinish = false;
  bool _isRefreshing = false;
  bool _isLoading = false;
  // bool _isEmpty = false;
  // bool _isUpdated = false;

  // loading(bool loadingState) => setState(() {
  //       _isLoading = loadingState;
  //     });
  @override
  void initState() {
    // _streamController = StreamController<List<DocumentSnapshot>>();
    // requestNextPage();
    // widget.query.snapshots().listen((event) {
    //   onChangeData(event.docChanges);
    // });
    super.initState();
  }

  // void setItems() {
  //   _items.forEach((doc) {
  //     _itemMap[doc.id] = doc;
  //   });
  // }

  // void onChangeData(List<DocumentChange> documentChanges) {
  //   var isChange = false;
  //   documentChanges.forEach((productChange) {
  //     if (widget.updatedValues &&
  //         productChange.type == DocumentChangeType.added) {
  //       // _items.insert(0, productChange.doc);
  //       _items = {
  //         productChange.doc.id: productChange.doc,
  //         ..._items,
  //       };
  //       isChange = true;
  //     } else if (productChange.type == DocumentChangeType.removed) {
  //       _items.remove(productChange.doc.id);
  //       // _items.removeWhere((product) {
  //       //   return productChange.doc.id == product.id;
  //       // });
  //       isChange = true;
  //     } else {
  //       if (productChange.type == DocumentChangeType.modified) {
  //         // int indexWhere = _items.indexWhere((product) {
  //         //   return productChange.doc.id == product.id;
  //         // });
  //         _items[productChange.doc.id] = productChange.doc;
  //         // if (indexWhere >= 0) {
  //         //   _items[indexWhere] = productChange.doc;
  //         // } else {
  //         //   _items.add(productChange.doc);
  //         // }
  //         isChange = true;
  //       }
  //     }
  //   });
  //   if (isChange) {
  //     try {
  //       // setItems();
  //       _streamController!.add(_items.values.toList());
  //     } catch (e) {}
  //   } else {
  //     // setItems();
  //   }
  // }

  // void requestNextPage() async {
  //   if (!_isRequesting) {
  //     QuerySnapshot? querySnapshot;
  //     _isRequesting = true;
  //     if (_items.isEmpty) {
  //       querySnapshot = await widget.query
  //           // .orderBy(widget.orderBy)
  //           .limit(widget.initialDocumentLimit)
  //           .get();

  //       if (querySnapshot.docs.length == 0) {
  //         setState(() {
  //           _isEmpty = true;
  //         });
  //       } else {
  //         setState(() {
  //           _isEmpty = false;
  //         });
  //       }
  //     } else {
  //       querySnapshot = await widget.query
  //           // .orderBy(widget.orderBy)
  //           .startAfterDocument(_items.values.toList()[_items.length - 1])
  //           .limit(widget.initialDocumentLimit)
  //           .get();
  //     }
  //     // ignore: unnecessary_null_comparison
  //     if (querySnapshot != null) {
  //       int oldSize = _items.length;
  //       // _items.addAll(querySnapshot.docs);
  //       Map<String, dynamic> addedMap = {};
  //       querySnapshot.docs.forEach((element) {
  //         addedMap[element.id] = element;
  //       });
  //       _items = {
  //         ..._items,
  //         ...addedMap,
  //       };
  //       int newSize = _items.length;
  //       if (oldSize != newSize) {
  //         _streamController!.add(_items.values.toList());
  //       }
  //     }
  //     _isRequesting = false;
  //   }
  //   // setItems();
  // }

  @override
  void dispose() {
    super.dispose();
    // _streamController!.close();
  }

  // onRefresh() {
  //   setState(() {
  //     _isRefreshing = false;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          _isRefreshing
              ? Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    widget.showProgressIndicator
                        ? CircularProgressIndicator(
                          backgroundColor: Colors.grey,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            Colors.yellow,
                          ),
                        )
                        : SizedBox.shrink(),
              )
              : SizedBox.shrink(),
          Expanded(
            child: SizedBox(
              height: 300,
              child: StreamBuilder<QuerySnapshot>(
                stream: widget.query.snapshots(),
                builder:
                    widget.builder != null
                        ? (
                          BuildContext context,
                          AsyncSnapshot<QuerySnapshot<Object?>> docs,
                        ) {
                          return Stack(
                            children: [
                              widget.builder!(context, docs),
                              _isLoading
                                  ? !widget.showProgressIndicator
                                      ? SizedBox.shrink()
                                      : CircularProgressIndicator(
                                        backgroundColor: Colors.grey,
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                              Colors.yellow,
                                            ),
                                      )
                                  : SizedBox.shrink(),
                            ],
                          );
                        }
                        : (
                          BuildContext context,
                          AsyncSnapshot<QuerySnapshot<Object?>> docs,
                        ) {
                          if (docs.hasError) {
                            print(docs.error);
                            return Text('Error: ${docs.error}');
                          }

                          switch (docs.connectionState) {
                            case ConnectionState.waiting:
                              return widget.isLoadingWidgetRequired
                                  ? Center(
                                    child:
                                        !widget.showProgressIndicator
                                            ? SizedBox.shrink()
                                            : CircularProgressIndicator(
                                              backgroundColor:
                                                  Theme.of(
                                                    context,
                                                  ).colorScheme.background,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                    Theme.of(
                                                      context,
                                                    ).primaryColorDark,
                                                  ),
                                            ),
                                  )
                                  : SizedBox.shrink();
                            default:
                              return Stack(
                                alignment:
                                    widget.loadingWidgetAlignment == null
                                        ? Alignment.center
                                        : widget.loadingWidgetAlignment!,
                                children: [
                                  widget.scrollDirection == Axis.horizontal
                                      ? SizedBox(
                                        height: 150,
                                        child: ListView(
                                          scrollDirection:
                                              widget.scrollDirection,
                                          children:
                                              docs.data!.docs
                                                  .map(
                                                    (e) => widget.getItem!(
                                                      e,
                                                      (e.data()
                                                          as Map<
                                                            String,
                                                            dynamic
                                                          >),
                                                    ),
                                                  )
                                                  .toList(),
                                        ),
                                      )
                                      : MediaQuery.removePadding(
                                        removeTop: true,
                                        context: context,
                                        child: ListView(
                                          scrollDirection:
                                              widget.scrollDirection,
                                          padding: EdgeInsets.all(0),
                                          reverse: widget.isRevers,
                                          children: [
                                            if (widget.showCount)
                                              Row(
                                                children: [
                                                  Spacer(),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                          8.0,
                                                        ),
                                                    child: Text(
                                                      '${widget.countText ?? 'Numbers'} : ${docs.data!.docs.length.toString()}',
                                                      style:
                                                          Theme.of(context)
                                                              .primaryTextTheme
                                                              .displayMedium,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            if (docs.data!.docs.isEmpty &&
                                                widget.emptyText != null &&
                                                widget.emptyText!.isNotEmpty)
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  top:
                                                      Helpers.getMQHeight(
                                                        context: context,
                                                      ) *
                                                      0.1,
                                                ),
                                                child: Center(
                                                  child: Text(
                                                    widget.emptyText!,
                                                    style:
                                                        Theme.of(
                                                          context,
                                                        ).textTheme.bodySmall,
                                                  ),
                                                ),
                                              ),
                                            if (widget.onTopWidget != null)
                                              ...widget.onTopWidget!,
                                            ...docs.data!.docs
                                                .map(
                                                  (e) => SwipeActionCell(
                                                    trailingActions: <
                                                      SwipeAction
                                                    >[
                                                      if (widget.removeCell &&
                                                          !(widget.blockingRemoceDocId ??
                                                                  [])
                                                              .contains(e.id))
                                                        SwipeAction(
                                                          title: "Remove",
                                                          icon: Icon(
                                                            Icons.delete,
                                                          ),
                                                          onTap: (
                                                            CompletionHandler
                                                            handler,
                                                          ) async {
                                                            if (widget
                                                                    .onRemove !=
                                                                null) {
                                                              widget.onRemove!
                                                                  .call(
                                                                    e.data()
                                                                        as Map<
                                                                          String,
                                                                          dynamic
                                                                        >,
                                                                    e.id,
                                                                  );
                                                            } else {}
                                                          },
                                                          color:
                                                              Theme.of(context)
                                                                  .colorScheme
                                                                  .error,
                                                        ),
                                                    ],
                                                    key: ValueKey(e.id),
                                                    child: widget.getItem!(
                                                      e,
                                                      (e.data()
                                                          as Map<
                                                            String,
                                                            dynamic
                                                          >),
                                                    ),
                                                  ),
                                                )
                                                .toList(),
                                            if (widget.needBottomSizedBox)
                                              SizedBox(height: 300),
                                          ],
                                        ),
                                      ),
                                  _isLoading
                                      ? Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child:
                                            !widget.showProgressIndicator
                                                ? SizedBox.shrink()
                                                : CircularProgressIndicator(
                                                  backgroundColor:
                                                      Theme.of(
                                                        context,
                                                      ).primaryColor,
                                                  valueColor:
                                                      AlwaysStoppedAnimation<
                                                        Color
                                                      >(
                                                        Theme.of(
                                                          context,
                                                        ).primaryColor,
                                                      ),
                                                ),
                                      )
                                      : SizedBox.shrink(),
                                ],
                              );
                          }
                        },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
