// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls, unused_field, deprecated_member_use

import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/theme/theme_extension.dart';
import 'package:tetbee__base/utils/enums.dart';
import 'package:tetbee__base/utils/helper.dart';
import 'package:tetbee__base/widgets/buttons/circle_icon_button.dart';
import 'package:tetbee__base/widgets/buttons/home_button.dart';

class MediaPickerFormUnit extends StatefulWidget {
  final MapEntry<String, FormUnit> formUnit;
  const MediaPickerFormUnit({super.key, required this.formUnit});

  @override
  MediaPickerState createState() => MediaPickerState();
}

class MediaPickerState extends State<MediaPickerFormUnit> {
  FormBuilderState? _formState;
  late final String attribute;
  late final FormUnit formUnit;
  late Map<String, StoredData>? _initialValue;

  List<StoredData>? _images = [];
  final List<StoredData> _deletedImage = [];
  final List<dynamic> _validators = [];
  bool _isLoadingImage = false;
  final double borderRadius = 10;
  final ImagePicker _picker = ImagePicker();
  @override
  void initState() {
    super.initState();

    _formState = FormBuilder.of(context);
    attribute = widget.formUnit.key;
    formUnit = widget.formUnit.value;

    if (_formState!.initialValue[attribute] != null &&
        _formState!.initialValue[attribute].isNotEmpty) {
      _formState!.initialValue[attribute].values.forEach((element) {
        _images!.add(StoredData.fromJson(element));
      });
    }
  }

  Widget _buildAddImageWidget() =>
      _images!.length >= formUnit.maxImgNumber!
          ? SizedBox.shrink()
          : Padding(
            padding: const EdgeInsets.all(8.0),
            child: HomeButton(
              iconData: Icons.add,
              onTap: () {
                showCustomFormBottomSheet(
                  context: context,
                  list: [
                    if (formUnit.dataType!.contains(DataType.img))
                      BottoSheetItemModel(
                        text: 'Images',
                        trailingWidget: Icon(
                          Icons.image,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onTap: () async {
                          await _postImage(DataType.img);
                        },
                      ),

                    //TODO fix at version 1.1.3
                    // if (formUnit.dataType == DataType.video ||
                    //     formUnit.dataType == DataType.both)
                    //   BottoSheetItemModel(
                    //       text: 'Videos',
                    //       trailingWidget: Icon(Icons.video_library_sharp),
                    //       onTap: () async {
                    //         await _postImage(DataType.video);
                    //       }),
                    if (formUnit.dataType!.contains(DataType.pdf))
                      BottoSheetItemModel(
                        text: 'Files',
                        trailingWidget: Icon(
                          Icons.picture_as_pdf_outlined,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                        onTap: () async {
                          await _postImage(DataType.img);
                        },
                      ),
                  ],
                );
              },
            ),
          );

  Widget _buildImgWidget(int index, StoredData e) {
    final double height =
        e == _images!.first
            ? formUnit.widgetHeight!
            : formUnit.widgetHeight! - 20;
    final double width =
        e == _images!.first
            ? formUnit.widgetHeight!
            : formUnit.widgetHeight! - 40;
    return e.dataType == DataType.video
        ? Icon(
          Icons.video_collection_rounded,
          color: Theme.of(context).primaryColor,
          size: height,
        )
        : Padding(
          padding: EdgeInsets.symmetric(
            vertical: e == _images!.first ? 10 : 20,
            horizontal: 5,
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              SizedBox(
                height: height,
                width: width,
                child:
                    e.xFile == null
                        ? Container(
                          height: height,
                          width: width,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Theme.of(
                                context,
                              ).baseTextColor.withOpacity(0.4),
                            ),
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: CachedNetworkImageProvider(e.url!),
                            ),
                          ),
                        )
                        : Image.file(File(e.xFile!.path), fit: BoxFit.cover),
              ),
              if (!formUnit.readOnly)
                CircleIconButton(
                  radius: 15,
                  onTap: () {
                    setState(() {
                      _deletedImage.add(_images![index]);
                      _images!.removeAt(index);
                    });
                  },
                  iconData: Icons.delete,
                ),
            ],
          ),
        );
  }

  Future<void> _postImage(DataType dateType) async {
    try {
      setState(() {
        _isLoadingImage = true;
      });
      if (formUnit.maxImgNumber == 1) {
        if (dateType == DataType.img) {
          await _picker
              .pickImage(
                source: ImageSource.gallery,
                imageQuality: formUnit.imageQuality,
              )
              .then((img) {
                setState(() {
                  if (img != null) {
                    _images!.add(
                      xFileToStoredData(img, formUnit.dataPath!, dateType),
                    );
                  }
                  _isLoadingImage = false;
                });
              });
        } else if (dateType == DataType.video) {
          await _picker.pickVideo(source: ImageSource.gallery).then((img) {
            setState(() {
              _images = [];
              if (img != null) {
                _images!.add(
                  xFileToStoredData(img, formUnit.dataPath!, dateType),
                );
              }
              _isLoadingImage = false;
            });
          });
        }
      } else {
        if (dateType == DataType.img) {
          await _picker
              .pickMultiImage(imageQuality: formUnit.imageQuality)
              .then((List<XFile>? resultList) {
                setState(() {
                  if (resultList != null && resultList.isNotEmpty) {
                    _images!.addAll(
                      resultList
                          .take(formUnit.maxImgNumber! - _images!.length)
                          .map(
                            (e) => xFileToStoredData(
                              e,
                              formUnit.dataPath!,
                              dateType,
                            ),
                          )
                          .toList(),
                    );
                  }

                  _isLoadingImage = false;
                });
              });
        } else if (dateType == DataType.video) {
          await _picker.pickVideo(source: ImageSource.gallery).then((img) {
            _images = [];
            setState(() {
              if (img != null) {
                _images!.add(
                  xFileToStoredData(img, formUnit.dataPath!, dateType),
                );
              }
              _isLoadingImage = false;
            });
          });
        }
      }
    } catch (e) {
      setState(() {
        _isLoadingImage = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return FormField(
      onSaved: (dynamic val) {
        _formState!.setInternalFieldValue(attribute, val);
        if (_deletedImage.isNotEmpty) {
          _deletedImage.forEach((element) {
            if (element.xFile == null) {
              FirebaseStorage.instance
                  .ref()
                  .child('${element.dataPath}/${element.name}')
                  .delete();
            }
          });
        }
      },
      // validator: FormValidatorLogic.compose([
      //   if (formUnit.validators != null && formUnit.validators!.isNotEmpty)
      //     ...formUnit.validators!.map(
      //       (val) => getValidators(qFormValidator: val),
      //     ),
      // ]),
      key: widget.key,
      builder: (FormFieldState val) {
        return FormFieldWrapper(
          label: formUnit.label,
          subLabel: formUnit.subLabel,
          errorText: val.errorText,
          trailingWidget: formUnit.trailingWidget,
          formField: Stack(
            alignment: Alignment.topLeft,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(width: 4),
                      if (!formUnit.readOnly)
                        InfomationTag(
                          text:
                              'Maximum ${formUnit.maxImgNumber.toString()} images',
                        ),
                      // Spacer(),
                    ],
                  ),
                  Spacer(),
                  if (!formUnit.readOnly) _buildAddImageWidget(),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  height:
                      _images!.isEmpty
                          ? _isLoadingImage
                              ? formUnit.widgetHeight! + 30
                              : 0
                          : formUnit.widgetHeight! + 30,
                  child:
                      _isLoadingImage
                          ? Center(child: CircularProgressIndicator())
                          : Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: formUnit.widgetHeight,
                                child:
                                    _images != null && _images!.isNotEmpty
                                        ? Row(
                                          children: [
                                            Expanded(
                                              child:
                                                  !formUnit.readOnly
                                                      ? ReorderableListView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          ..._images!.map((
                                                            StoredData e,
                                                          ) {
                                                            return ReorderableDelayedDragStartListener(
                                                              key: ValueKey(
                                                                '${e.name}${_images!.indexOf(e)}',
                                                              ),
                                                              index: _images!
                                                                  .indexOf(e),
                                                              child:
                                                                  _buildImgWidget(
                                                                    _images!
                                                                        .indexOf(
                                                                          e,
                                                                        ),
                                                                    e,
                                                                  ),
                                                            );
                                                          }),
                                                        ],
                                                        onReorder: (
                                                          int oldIndex,
                                                          int newIndex,
                                                        ) {
                                                          setState(() {
                                                            _images!.insert(
                                                              newIndex,
                                                              _images![oldIndex],
                                                            );
                                                            if (oldIndex >
                                                                newIndex) {
                                                              _images!.removeAt(
                                                                oldIndex + 1,
                                                              );
                                                            } else {
                                                              _images!.removeAt(
                                                                oldIndex,
                                                              );
                                                            }
                                                          });
                                                        },
                                                      )
                                                      : ListView(
                                                        scrollDirection:
                                                            Axis.horizontal,
                                                        children: [
                                                          ..._images!.map((
                                                            StoredData e,
                                                          ) {
                                                            return _buildImgWidget(
                                                              _images!.indexOf(
                                                                e,
                                                              ),
                                                              e,
                                                            );
                                                          }),
                                                        ],
                                                      ),
                                            ),
                                          ],
                                        )
                                        : ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: const [],
                                        ),
                              ),
                            ],
                          ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class InfomationTag extends StatefulWidget {
  final String text;
  final bool tooltipMode;
  final Color? iconColor;
  const InfomationTag({
    super.key,
    required this.text,
    this.iconColor,
    this.tooltipMode = false,
  });

  @override
  State<InfomationTag> createState() => _InfomationTagState();
}

class _InfomationTagState extends State<InfomationTag> {
  @override
  Widget build(BuildContext context) {
    return widget.tooltipMode
        ? InkWell(
          onTap: () {
            showModalBottomSheet(
              showDragHandle: true,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              context: context,
              builder:
                  (_) => Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Material(
                      color: Theme.of(context).scaffoldBackgroundColor,
                      child: SafeArea(child: Text(widget.text)),
                    ),
                  ),
            );
          },
          child: Icon(
            Icons.info_outline_rounded,
            size: 25,
            color: widget.iconColor ?? Theme.of(context).baseTextColor,
          ),
        )
        : Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.info,
              size: 20,
              color: widget.iconColor ?? Theme.of(context).primaryColorDark,
            ),
            SizedBox(width: 5),
            Expanded(
              child: Text(
                widget.text,
                style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 14,
                  color: Theme.of(context).unselectedWidgetColor,
                ),
              ),
            ),
          ],
        );
  }
}

class NewInfomationTag extends StatelessWidget {
  final String text;
  final double? fontSize;
  const NewInfomationTag({super.key, required this.text, this.fontSize});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Helpers.getMQWidth(context: context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info,
            size: 20,
            color: Theme.of(context).baseTextColor.withOpacity(0.4),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.displaySmall!.copyWith(
                fontSize: fontSize,
                fontWeight: FontWeight.w700,
                color: Theme.of(context).baseTextColor.withOpacity(0.6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

StoredData xFileToStoredData(XFile xFile, String dataPath, DataType dataType) =>
    StoredData(
      userId: '',
      url: xFile.path,
      name: xFile.name,
      dataPath: '$dataPath/',
      dataType: dataType,
      xFile: xFile,
    );

StoredData fileToStoredData(File file, String dataPath) {
  String fileExtension = file.path.split('.').last;
  DataType dataType = fileExtension == 'pdf' ? DataType.pdf : DataType.doc;
  return StoredData(
    userId: '',
    url: XFile(file.path).path,
    name: XFile(file.path).name,
    dataPath: '$dataPath/',
    dataType: dataType,
    xFile: XFile(file.path),
  );
}
