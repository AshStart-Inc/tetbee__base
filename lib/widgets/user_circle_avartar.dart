import 'package:flutter/material.dart';
import 'package:tetbee__base/models/user/user_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class UserCircleAvartar extends StatelessWidget {
  final UserModel? userModel;
  final double radius;
  final Widget? addFormWidget;
  final bool userBorder;
  final Color? circleColor;
  final bool showName;
  final bool vertial;
  final String? placeId;
  final MainAxisAlignment? mainAxisAlignment;
  const UserCircleAvartar({
    super.key,
    this.userModel,
    this.radius = 20,
    this.addFormWidget,
    this.userBorder = false,
    this.circleColor,
    this.showName = false,
    this.vertial = false,
    this.mainAxisAlignment,
    this.placeId,
  });

  @override
  Widget build(BuildContext context) {
    return vertial
        ? Column(
          children: [
            if (userBorder)
              CircleAvatar(
                radius: radius,
                backgroundColor:
                    circleColor ?? Theme.of(context).primaryColorDark,
              ),
            CircleAvatar(
              // backgroundImage: userModel.profilePictureUrls!.isEmpty
              //     ? AssetImage('assets/logo/userProfile.png') as ImageProvider
              //     : CachedNetworkImageProvider(
              //         userModel.profilePictureUrls!.values.first.url!),
              radius: userBorder ? radius - 1.5 : radius,
            ),
            SizedBox(height: 4),
            Text(
              userModel == null
                  ? ''
                  : placeId != null
                  ? userModel!.getPlaceNickName(placeId)
                  : userModel!.nickName,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        )
        : Row(
          mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    if (userBorder)
                      CircleAvatar(
                        radius: radius,
                        backgroundColor:
                            circleColor ?? Theme.of(context).primaryColorDark,
                      ),
                    CircleAvatar(
                      backgroundImage:
                          userModel == null
                              ? AssetImage("assets/images/default_user.png")
                                  as ImageProvider
                              : userModel!.defaultProfilePictureUrl == null ||
                                  userModel!.defaultProfilePictureUrl!.isEmpty
                              ? AssetImage("assets/images/default_user.png")
                                  as ImageProvider
                              : CachedNetworkImageProvider(
                                userModel!.defaultProfilePictureUrl!,
                              ),
                      radius: userBorder ? radius - 1.5 : radius,
                    ),
                  ],
                ),
                if (addFormWidget != null)
                  InkWell(
                    onTap: () {
                      // materialPageRoute(
                      //   context: context,
                      //   destination: addFormWidget!,
                      // );
                    },
                    hoverColor: Colors.transparent,
                    child: const CircleAvatar(
                      radius: 14,
                      child: Icon(
                        Icons.change_circle,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            if (showName)
              Row(
                children: [
                  SizedBox(width: 10),
                  Text(
                    userModel == null
                        ? ''
                        : placeId != null
                        ? userModel!.getPlaceNickName(placeId)
                        : userModel!.nickName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
          ],
        );
  }
}
