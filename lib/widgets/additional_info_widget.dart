import 'package:flutter/material.dart';

class AdditionalInfoWidget extends StatelessWidget {
  final IconData iconData;
  final String title;
  final List<String> infos;
  const AdditionalInfoWidget({
    super.key,
    required this.iconData,
    required this.infos,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Icon(iconData, color: Colors.grey.withOpacity(0.10), size: 150),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  title,
                  style:
                  //TODO needs to be checked
                  Theme.of(context).primaryTextTheme.headlineMedium!.copyWith(
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              ...infos
                  .map(
                    (st) => Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                        vertical: 2,
                      ),
                      child: Text(
                        st,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
            ],
          ),
        ],
      ),
    );
  }
}
