import 'package:flutter/material.dart';
import 'package:tetbee__base/models/user/user_model.dart';

class SelectUserWidget extends StatelessWidget {
  final bool isSelected;
  final UserModel userModel;
  final String? placeId;
  final Function(String) onSelect;
  const SelectUserWidget({
    super.key,
    required this.isSelected,
    required this.onSelect,
    required this.userModel,
    this.placeId,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          onSelect(userModel.id!);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: isSelected ? Theme.of(context).primaryColor : Colors.black,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(userModel.getPlaceNickName(placeId)),
                Spacer(),
                if (isSelected) Icon(Icons.check),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
