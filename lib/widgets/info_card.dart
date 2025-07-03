import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/models/common/faq_model.dart';
import 'package:tetbee__base/tetbee__base.dart';

class InfoCard extends StatelessWidget {
  final bool sectionButton;
  final FAQModel faqModel;
  final Widget contents;
  final bool useRadius;
  final bool useLine;
  final String? title;
  final bool showInfoButton;
  final bool useBottomBorder;
  final Function? onTap;
  final Map<String, Widget>? editForms;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Alignment? editButtonAlignment;
  final Widget? editButtonWidget;
  final bool showFormAsBottomSheet;
  final bool needUpdateTag;
  final bool formAvailableStatus;
  final Function? onFormUnavailable;

  const InfoCard({
    super.key,
    required this.contents,
    this.useBottomBorder = false,
    this.editForms,
    this.useLine = true,
    this.sectionButton = false,
    this.padding,
    this.borderRadius,
    this.title,
    this.showInfoButton = false,
    this.editButtonAlignment,
    this.editButtonWidget,
    this.showFormAsBottomSheet = false,
    this.needUpdateTag = false,
    this.formAvailableStatus = true,
    this.onFormUnavailable,
    this.useRadius = true,
    this.onTap,
    required this.faqModel,
  });

  @override
  Widget build(BuildContext context) {
    final Widget widget = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        decoration: BoxDecoration(
          borderRadius:
              useRadius
                  ? BorderRadius.only(
                    topLeft: const Radius.circular(10),
                    topRight: const Radius.circular(10),
                    bottomLeft: Radius.circular(useBottomBorder ? 10 : 0),
                    bottomRight: Radius.circular(useBottomBorder ? 10 : 0),
                  )
                  : useBottomBorder
                  ? BorderRadius.only(
                    bottomLeft: Radius.circular(useBottomBorder ? 10 : 0),
                    bottomRight: Radius.circular(useBottomBorder ? 10 : 0),
                  )
                  : null,
          color: useLine ? Theme.of(context).cardColor : Colors.white,
        ),
        child: Stack(
          children: [
            Stack(
              alignment: editButtonAlignment ?? Alignment.topRight,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              useRadius
                                  ? BorderRadius.only(
                                    topRight: const Radius.circular(10),
                                    bottomLeft: Radius.circular(
                                      useBottomBorder ? 10 : 0,
                                    ),
                                    bottomRight: Radius.circular(
                                      useBottomBorder ? 10 : 0,
                                    ),
                                  )
                                  : useBottomBorder
                                  ? BorderRadius.only(
                                    bottomLeft: Radius.circular(
                                      useBottomBorder ? 10 : 0,
                                    ),
                                    bottomRight: Radius.circular(
                                      useBottomBorder ? 10 : 0,
                                    ),
                                  )
                                  : null,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              InkWell(
                                onTap:
                                    (editForms == null)
                                        ? null
                                        : !formAvailableStatus
                                        ? () {
                                          onFormUnavailable?.call();
                                        }
                                        : () {
                                          onTap?.call();
                                          if (editForms!.length == 1) {
                                            if (showFormAsBottomSheet) {
                                              CustomDialog.showNewCustomDialog(
                                                // backgroundColor: Colors.white,
                                                // drawerHandlerColor: Theme.of(context).cardColor,
                                                width: Helpers.getMQWidth(
                                                  context: context,
                                                ),
                                                context: context,
                                                widget: Padding(
                                                  padding:
                                                      const EdgeInsets.symmetric(
                                                        vertical: 8,
                                                        horizontal: 2,
                                                      ),
                                                  child:
                                                      editForms!.values.first,
                                                ),
                                                height:
                                                    Helpers.getMQHeight(
                                                      context: context,
                                                    ) *
                                                    0.5,
                                              );
                                            } else {
                                              Helpers.materialPageRoute(
                                                context: context,
                                                destination:
                                                    editForms!.values.first,
                                              );
                                            }
                                          } else {
                                            // showCustomFormBottomSheet(
                                            //   context: context,
                                            //   forms: editForms!,
                                            // );
                                          }
                                        },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    children: [
                                      LabelWithInfoButton(
                                        showInfo: showInfoButton || useRadius,
                                        faqModel: faqModel,
                                        title: title,
                                        textStyle:
                                            Theme.of(
                                              context,
                                            ).textTheme.displayMedium,
                                        iconColor: Colors.grey.withOpacity(0.7),
                                      ),
                                      const Spacer(),
                                      if (editForms != null)
                                        HomeButton(
                                          withContainer: false,
                                          iconColor: Colors.black,
                                          iconData:
                                              sectionButton
                                                  ? Icons.chevron_right_rounded
                                                  : FontAwesomeIcons.ellipsis,
                                          onTap: () {
                                            if (editForms!.length == 1) {
                                              if (showFormAsBottomSheet) {
                                                CustomDialog.showNewCustomDialog(
                                                  // backgroundColor: Colors.white,
                                                  // drawerHandlerColor: Theme.of(context).cardColor,
                                                  width: Helpers.getMQWidth(
                                                    context: context,
                                                  ),
                                                  context: context,
                                                  widget: Padding(
                                                    padding:
                                                        const EdgeInsets.symmetric(
                                                          vertical: 8,
                                                          horizontal: 2,
                                                        ),
                                                    child:
                                                        editForms!.values.first,
                                                  ),
                                                  height:
                                                      Helpers.getMQHeight(
                                                        context: context,
                                                      ) *
                                                      0.5,
                                                );
                                              } else {
                                                Helpers.materialPageRoute(
                                                  context: context,
                                                  destination:
                                                      editForms!.values.first,
                                                );
                                              }
                                            } else {
                                              // showCustomFormBottomSheet(
                                              //   context: context,
                                              //   forms: editForms!,
                                              // );
                                            }
                                          },
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              contents,
                            ],
                          ),
                        ),
                      ),
                    ),
                    if (!useBottomBorder)
                      Padding(
                        padding: EdgeInsets.only(left: useLine ? 8 : 0),
                        child: Container(
                          height: 2,
                          width: double.maxFinite,
                          decoration: BoxDecoration(color: Colors.grey[300]),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
    return Column(children: [widget]);
  }
}
