import 'package:flutter/material.dart';
import 'package:tetbee__base/tetbee__base.dart';

class FormTestingScreen extends StatefulWidget {
  const FormTestingScreen({super.key});

  @override
  State<FormTestingScreen> createState() => _FormTestingScreenState();
}

class _FormTestingScreenState extends State<FormTestingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Testing screen')),
      body:
      // true
      //     ? Text('asd')
      //     :
      FormManager(
        // initialValue: {
        //   'testing2': Colors.green.value,
        //   // 'testing5': UserModel(
        //   //   nickName: 'Dennis',
        //   //   userSettings: UserSettings(),
        //   // ),
        // },
        formFields: {
          // 'test22ing': FormUnit.datePicker(
          //   defaultStartWeekday: 1,
          //   // dateSelectionModes: [
          //   //   DateSelectionMode.weekly,
          //   //   DateSelectionMode.rangedMonth,
          //   //   DateSelectionMode.multiple,
          //   //   // DateSelectionMode.single,
          //   // ],
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
          // 'testing2': FormUnit.color(
          //   label: 'Testing',
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
          // 'testing3': FormUnit.boolean(
          //   label: 'Testing',
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
          // 'testing55': FormUnit.rangedDatePicker(
          //   isRanged: false,
          //   label: 'Testing',
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
          // 'testing4': FormUnit.phoneNumber(
          //   label: 'Testing',
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
          // 'testing5': FormUnit.itemPicker(
          //   label: 'Testing',
          //   isMultipleValueAllowed: true,
          //   validators: [
          //     CustomFormValidator.required(
          //       errorText: 'Select ITem first s ts ts',
          //     ),
          //   ],
          //   itemList: [
          //     UserModel(nickName: 'Dennis', userSettings: UserSettings()),
          //     UserModel(nickName: 'Alex', userSettings: UserSettings()),
          //     UserModel(nickName: 'Karen', userSettings: UserSettings()),
          //     UserModel(nickName: 'Denises', userSettings: UserSettings()),
          //     UserModel(nickName: 'Ale2', userSettings: UserSettings()),
          //     UserModel(nickName: 'Kare4n', userSettings: UserSettings()),
          //     UserModel(nickName: 'Den5ises', userSettings: UserSettings()),
          //   ],
          //   itemBuilder: (BuildContext context, dynamic item) {
          //     return SizedBox(
          //       width: 60,
          //       height: 60,
          //       child: Center(child: Text(item.nickName)),
          //     );
          //   },
          //   // validators: [CustomFormValidator.required(errorText: 'value')],
          // ),
        },
        onSaved: (a) async {
          print('===');
          print(a);
          print('===');
        },
      ),
    );
  }
}
