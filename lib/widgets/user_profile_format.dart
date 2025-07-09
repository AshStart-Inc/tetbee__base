import 'package:flutter/material.dart';
import 'package:tetbee__base/models/user/user_model.dart';
import 'package:tetbee__base/widgets/user_circle_avartar.dart';

class UserProfileFormat extends StatelessWidget {
  const UserProfileFormat({
    super.key,
    this.size = 55.0,
    required this.user,
    this.isNameRequired = true,
    this.nameColor = Colors.white,
    this.isProfilePicRequired = true,
    this.radius = 22,
    this.builder,
    this.placeId,
  });
  final UserModel user;
  final bool isNameRequired;
  final Color nameColor;
  final String? placeId;
  final bool isProfilePicRequired;
  final double size;
  final double radius;

  final Widget Function(Widget, Widget)? builder;

  @override
  Widget build(BuildContext context) {
    return builder?.call(
          UserCircleAvartar(placeId: null, userModel: user, radius: radius),
          Text(
            user.getPlaceNickName(placeId),
            style: Theme.of(
              context,
            ).textTheme.titleMedium!.copyWith(color: nameColor),
            maxLines: 1,
          ),
        ) ??
        InkWell(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isProfilePicRequired
                  ? UserCircleAvartar(
                    placeId: null,
                    userModel: user,
                    radius: radius,
                  )
                  : Container(),
              const SizedBox(width: 10),
              isNameRequired
                  ? Text(
                    user.nickName,
                    style: Theme.of(context).textTheme.titleMedium,
                    maxLines: 1,
                  )
                  : Container(),
            ],
          ),
        );
  }
}
