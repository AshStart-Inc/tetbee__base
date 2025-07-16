import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tetbee__base/widgets/tag_stream_widget.dart';

class MultiStreamCounter extends StatelessWidget {
  final List<Stream<QuerySnapshot>> streams;
  const MultiStreamCounter({super.key, required this.streams});

  @override
  Widget build(BuildContext context) {
    return _buildStream(0, 0);
  }

  Widget _buildStream(int index, int count) {
    return streams.isEmpty
        ? const SizedBox.shrink()
        : StreamBuilder<QuerySnapshot>(
          stream: streams[index],
          builder: (_, doc) {
            if (!doc.hasData || doc.data == null) {
              return const SizedBox.shrink();
            } else {
              int ct = count + doc.data!.docs.length;
              return index == streams.length - 1
                  ? TagWidget(count: ct)
                  : _buildStream(index + 1, ct);
            }
          },
        );
  }
}
