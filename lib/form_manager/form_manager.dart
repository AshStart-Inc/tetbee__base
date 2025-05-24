import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/form_unit/form_unit.dart';
import 'package:tetbee__base/form_manager/get_form_unit.dart';
import 'package:tetbee__base/tetbee__base.dart';
import 'package:tetbee__base/widgets/buttons/common_button.dart';

class FormManager extends StatefulWidget {
  final String? loadingText;

  final void Function(Map<String, dynamic> formValues)? onChange;
  final Future<void> Function(Map<String, dynamic>)? onSaved;
  final Function? onFinish;
  final Widget Function(Function)? customSaveButton;
  final Map<String, FormUnit>? formFields;
  final String saveButtonLabel;
  final Map<String, dynamic>? initialValue;
  final Function? onBackwardButtonTap;
  final Widget? appBardButtons;
  final Widget? additionalWidget;
  final bool showAppBar;
  final Color? scaffoldBackgroundColor;
  final Widget? loadingScreen;
  final bool resizeToAvoidBottomInset;
  final bool useGoBottomButton;
  final bool isLoading;
  final bool isSaving;
  final bool hasError;

  const FormManager({
    super.key,
    this.formFields,
    this.saveButtonLabel = 'Save',
    this.onChange,

    this.onSaved,
    this.showAppBar = true,
    this.loadingScreen,
    this.useGoBottomButton = false,
    this.scaffoldBackgroundColor,
    this.onFinish,
    this.initialValue,
    this.loadingText,
    this.onBackwardButtonTap,
    this.appBardButtons,
    this.additionalWidget,
    this.customSaveButton,
    this.resizeToAvoidBottomInset = false,
    this.hasError = false,
    this.isLoading = false,
    this.isSaving = false,
  });

  @override
  State<FormManager> createState() => _FormManagerState();
}

class _FormManagerState extends State<FormManager> {
  late final GlobalKey<FormBuilderState> _fomKey;
  bool _isLoading = false;
  @override
  void initState() {
    super.initState();
    _fomKey = GlobalKey<FormBuilderState>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      //initialize Form
      if (widget.initialValue != null) {
        widget.initialValue!.entries.map((MapEntry entry) {
          _fomKey.currentState!.setInternalFieldValue(entry.key, entry.value);
        });
      }
    });
  }

  loading(bool loadingState) => setState(() {
    _isLoading = loadingState;
  });

  @override
  Widget build(BuildContext context) {
    return widget.isLoading
        ? LoadingScreen()
        : SafeArea(
          child: Stack(
            children: [
              FormBuilder(
                key: _fomKey,
                initialValue: widget.initialValue ?? {},
                onChanged:
                    () => widget.onChange?.call(
                      _fomKey.currentState?.instantValue ?? {},
                    ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        children: [
                          if (widget.formFields != null)
                            ..._getFormValues(formFields: widget.formFields!),
                        ],
                      ),
                    ),
                    if (widget.onSaved != null) buildButtons(),
                  ],
                ),
              ),
              if (_isLoading) formLoadingWidget(),
            ],
          ),
        );
  }

  List<Widget> _getFormValues({required Map<String, FormUnit> formFields}) {
    return [
      ...widget.formFields!.entries.map(
        (e) => SizedBox(
          key: ValueKey(e.key),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: getFormUnit(e, _fomKey.currentState?.instantValue[e.key]),
          ),
        ),
      ),
    ];
  }

  Widget buildButtons() {
    return CommonButton(
      borderColor: Theme.of(context).colorScheme.tertiary,
      text: 'save',
      onTap: () async {
        if (_fomKey.currentState!.saveAndValidate()) {
          loading(true);
          await widget.onSaved!(_fomKey.currentState!.instantValue).then((_) {
            loading(false);
            widget.onFinish?.call();
          });
        }
      },
    );
  }

  Widget formLoadingWidget() {
    return Container(
      // ignore: deprecated_member_use
      color: Colors.grey.withOpacity(0.2),
      height: double.maxFinite,
      width: double.maxFinite,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
