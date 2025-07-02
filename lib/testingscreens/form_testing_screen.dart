import 'package:flutter/material.dart';
import 'package:tetbee__base/models/common/ranged_time_model.dart';
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
        initialValue: {
          'testing2': DailyAvailability(
            weekDay: 1,
            timeRange: RangedTimeModel(
              weekDay: 1,
              startTime: DateTime(1992, 09, 17, 03, 00, 00),
              endTime: DateTime(1992, 09, 18, 06, 00, 00),
            ),
          ),
        },
        // additionalButtons: CommonButton(text: 'asdas', onTap: () {}),
        // initialValue: {
        //   'testing2': Colors.green.value,
        //   // 'testing5': UserModel(
        //   //   nickName: 'Dennis',
        //   //   userSettings: UserSettings(),
        //   // ),
        // },
        formFields: {
          'testing2': FormUnit.rangedTimeSlider(
            useNotPreferedDay: false,
            useDailyComment: false,
            baseTimeRange: RangedTimeModel(
              weekDay: 1,
              startTime: DateTime(1992, 09, 17, 00, 00, 00),
              endTime: DateTime(1992, 09, 18, 06, 00, 00),
            ),
            label: 'Testing',
            // validators: [CustomFormValidator.required(errorText: 'value')],
          ),
          // 'text': FormUnit.text(
          //   // max
          //   maxLines: 6,
          //   textInputType: TextInputType.multiline,
          //   label: 'Please select schedule start week day',
          //   hint: 'Select schedule week day...',
          //   validators: [CustomFormValidator.required()],
          // ),
          // 'firstName': FormUnit.dropdown(
          //   label: 'Please select schedule start week day',
          //   hint: 'Select schedule week day...',
          //   itemList: AvailabilityService.baseWeek,
          //   itemBuilder:
          //       (_, value) => Text(
          //         DateHelpers.getWeekdayFullFormat((value as DateTime).weekday),
          //       ),
          //   validators: [CustomFormValidator.required()],
          // ),
          // 'wanring': FormUnit.customWidget(
          //   widget: Text(
          //     'This selected weekday will determine the start of your weekly schedule. It will also be used to collect availability. Once set, this value cannot be changed. Please choose carefully..',
          //   ),
          // ),
          // 'firstN2ame': FormUnit.text(
          //   label: 'First Name',
          //   validators: [CustomFormValidator.required()],
          // ),

          // 'test22ing': FormUnit.rangedTimePicker(
          //   baseTime: DateTime(1992, 09, 17, 11, 30),
          //   label: 'asdasd',
          //   // dateSelectionModes: [
          //   //   DateSelectionMode.weekly,
          //   //   DateSelectionMode.rangedMonth,
          //   //   DateSelectionMode.multiple,
          //   //   // DateSelectionMode.single,
          //   // ],
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
