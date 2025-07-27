// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls, unused_field, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:tetbee__base/dialog/custom_dialog.dart';
import 'package:tetbee__base/form_manager/form_fields/media_picker/image_display_widget.dart';
import 'package:tetbee__base/form_manager/form_fields/media_picker/image_helpers.dart';
import 'package:tetbee__base/form_manager/form_fields/media_picker/info_tag.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/widgets/form_field_wrapper.dart';
import 'package:tetbee__base/models/common/stored_data.dart';
import 'package:tetbee__base/utils/enums.dart';
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

  @override
  Widget build(BuildContext context) {
    return FormField(
      initialValue: _images,
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
          trailingWidget: Row(
            children: [
              if (!formUnit.readOnly)
                InfomationTag(
                  text: 'Maximum ${formUnit.maxImgNumber.toString()} images',
                ),
              _buildAddImageWidget(),
            ],
          ),
          formField: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _isLoadingImage
                  ? Center(child: CircularProgressIndicator())
                  : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height:
                            _images != null && _images!.isNotEmpty
                                ? formUnit.widgetHeight
                                : 0,
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
                                                      index: _images!.indexOf(
                                                        e,
                                                      ),
                                                      child: _buildImgWidget(
                                                        _images!.indexOf(e),
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
                                                      _images![oldIndex]
                                                          .copyWith(
                                                            ordinal: newIndex,
                                                          ),
                                                    );
                                                    if (oldIndex > newIndex) {
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
                                                      _images!.indexOf(e),
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
            ],
          ),
        );
      },
    );
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
    return ImageDisplayWidget(
      key: ValueKey('ImageDisplayWidget/$attribute/$index'),
      storedData: e,
      index: index,
      readOnly: formUnit.readOnly,
      onDelete: () {
        setState(() {
          _deletedImage.add(_images![index]);
          _images!.removeAt(index);
        });
      },
    );
  }

  Future<void> _postImage(DataType dateType) async {
    try {
      setState(() {
        _isLoadingImage = true;
      });
      if (formUnit.maxImgNumber == 1) {
        if (dateType == DataType.img) {
          List<XFile>? image = await ImageHelpers.getImage(
            ImageSource.gallery,
            multi: false,
          );
          // setState(() {
          //   if (image.first != null) {
          //     _images!.add(xFileToStoredData(image, dateType));
          //   }
          //   _isLoadingImage = false;
          // });
        } else if (dateType == DataType.video) {
          await _picker.pickVideo(source: ImageSource.gallery).then((img) {
            setState(() {
              _images = [];
              if (img != null) {
                _images!.add(xFileToStoredData(img, dateType));
              }
              _isLoadingImage = false;
            });
          });
        }
      } else {
        if (dateType == DataType.img) {
          await ImageHelpers.getImage(ImageSource.gallery, multi: true).then((
            List<XFile>? resultList,
          ) {
            setState(() {
              if (resultList != null && resultList.isNotEmpty) {
                _images!.addAll(
                  resultList
                      .take(formUnit.maxImgNumber! - _images!.length)
                      .map(
                        (e) => xFileToStoredData(
                          e,
                          dateType,
                        ).copyWith(ordinal: resultList.indexOf(e)),
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
                _images!.add(xFileToStoredData(img, dateType));
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
}
