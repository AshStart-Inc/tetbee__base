import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tetbee__base/theme/theme_extension.dart';

class CommentWidget extends StatelessWidget {
  final String title;
  final String? comment;
  const CommentWidget({super.key, required this.comment, required this.title});

  @override
  Widget build(BuildContext context) {
    return comment == null || comment!.isEmpty
        ? SizedBox.shrink()
        : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 8,
                    color: Theme.of(context).baseTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 2),
                const Icon(
                  FontAwesomeIcons.comment,
                  size: 8,
                  color: Colors.grey,
                ),
                const SizedBox(width: 10),
                Text(
                  comment!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
