// ignore_for_file: non_constant_identifier_names

import 'package:tetbee__base/models/common/faq_model.dart';

final FAQModel WORK_HOUR_FAQ_MODEL = FAQModel(
  label: 'Work Hours',
  info: 'Your staff will send availabilities with these time range.',
);
final FAQModel POSITION_FQA_MODEL = FAQModel(
  label: 'Positions',
  info: 'Your staff will join your work palce with these positions.',
);

final FAQModel PRESET_SCHEDULE_TIME_MODEL = FAQModel(
  label: 'Schedule Preset Time',
  info:
      'This time list will be used when you make schedule as a short cut button.',
);

final FAQModel SIGN_OUT_MODEL = FAQModel(
  label: 'Shift Sign out',
  info:
      'You will be able to use shift sign out functionality.Once they sign out their shift, you will be able to calculate work hours.',
);
final FAQModel TIME_OFF_FAQ_MODEL = FAQModel(
  label: 'Time Off Request',
  info:
      'Your staff will be able to send time off or vacation request. To be accepted, Your confirmation will be required and it will be displayed in schedule table.',
);
final FAQModel ADDRESS_FAQ_MODEL = FAQModel(label: 'Address', info: '');
final FAQModel OPENTIME_FAQ_MODEL = FAQModel(
  label: 'Work Time',
  info:
      'This time list will be used for collecting staff availability. Staff will send their availabilities depending on this time list.',
);
final FAQModel OPEN_OR_CLOSE_FQA_MODEL = FAQModel(
  label: 'Open Work Place',
  info:
      'If you\'re ready to welcome new team members, you can choose to open your workplace to new hires! To do so, you\'ll need to make sure you have at least one day with proper work hours, and create at least one new position for additional staff. By opening up, you\'ll be able to connect with other users who are interested in applying to your workplace and growing alongside your team.',
);
final FAQModel AVAILABILITY_OPTION = FAQModel(
  label: 'User Availability',
  info:
      'Make available your staff can update their user availability, if your user doesn\'t have any specifc availability from availability reciever this availability will be used as default.',
);
