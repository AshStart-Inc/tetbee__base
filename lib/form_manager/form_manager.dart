import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:tetbee__base/form_manager/get_form_unit.dart';
import 'package:tetbee__base/tetbee__base.dart';

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
  final Widget? additionalButtons;
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
    this.additionalButtons,
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
      if (widget.initialValue != null) {
        for (var entry in widget.initialValue!.entries) {
          _fomKey.currentState!.setInternalFieldValue(entry.key, entry.value);
        }
      }
    });
  }

  loading(bool loadingState) => setState(() {
    _isLoading = loadingState;
  });

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: widget.isLoading,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Helpers.dismissKeyboard(context: context);
        },
        child: SafeArea(
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
                      child: SingleChildScrollView(
                        // itemCount: (widget.formFields ?? {}).length,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        // itemBuilder: (context) {},
                        child: Column(
                          children: [
                            if (widget.formFields != null)
                              ..._getFormValues(formFields: widget.formFields!),
                          ],
                        ),
                      ),
                    ),
                    if (widget.onSaved != null) buildButtons(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<Widget> _getFormValues({required Map<String, FormUnit> formFields}) {
    return [
      ...widget.formFields!.entries.map(
        (e) => SizedBox(
          key: PageStorageKey(e.key),
          child: IgnorePointer(
            ignoring: e.value.readOnly,
            child: getFormUnit(e, _fomKey.currentState?.instantValue[e.key]),
          ),
        ),
      ),
    ];
  }

  Widget buildButtons() {
    return Row(
      children: [
        Expanded(
          child: CommonButton(
            buttonColor: Theme.of(context).primaryColor,
            borderColor: Theme.of(context).primaryColor,
            buttonType: ButtonType.expanded,
            text: widget.saveButtonLabel,
            trailingWidget:
                (widget.isLoading || _isLoading)
                    ? Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: CircularProgressIndicator(),
                      ),
                    )
                    : null,
            onTap: () async {
              if (_fomKey.currentState!.saveAndValidate()) {
                loading(true);
                await Future.delayed(Duration(milliseconds: 10)).then((
                  _,
                ) async {
                  await widget.onSaved!(_fomKey.currentState!.instantValue)
                      .then((_) {
                        loading(false);
                        widget.onFinish?.call();
                      });
                });
              }
            },
          ),
        ),
        if (widget.additionalButtons != null) widget.additionalButtons!,
      ],
    );
  }
}
