import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateObject {
  DateObject({
    this.dayName,
    this.dayOfMonth,
    this.month,
    this.year,
    this.selected,
  });

  final String dayName;
  final String dayOfMonth;
  final String month;
  final String year;
  final bool selected;
}

class DateUtils {
  static DateObject dateObject({@required DateTime date}) {
    if (date == null) {
      return null;
    }

    var format = 'EEEE d MMMM y';
    String stringDate = DateFormat(format, 'id_ID').format(date);
    List stringDates = stringDate.split(" ");

    return DateObject(
      dayName: stringDates[0],
      dayOfMonth: stringDates[1],
      month: stringDates[2],
      year: stringDates[3],
    );
  }

  static String dmyFromString({String stringDate}) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime dateTime = dateFormat.parse(stringDate);
    return DateFormat('dd-MM-yyyy').format(dateTime);
  }

  static String dateIndo({DateTime date}) {
    if (date == null) {
      date = DateTime.now();
    }
    var format = 'EEEE, d MMMM y';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String hhmmFromISO({String stringDate}) {
    DateFormat dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ssZ");
    DateTime dateTime = dateFormat.parse(stringDate);
    return DateFormat('HH:mm').format(dateTime);
  }

  static String dateDM({DateTime date}) {
    var format = 'd MMMM';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String dateDMY({DateTime date}) {
    var format = 'd MMMM y';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String dateD({DateTime date}) {
    var format = 'd';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String dateShortDMY({DateTime date}) {
    var format = 'd MMM y';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String shortDMYFromISO({String stringDate}) {
    DateFormat dateFormat = DateFormat("yyyy-MM-ddTHH:mm:ssZ");
    DateTime dateTime = dateFormat.parse(stringDate);
    return DateFormat('d MMM y', 'id_ID').format(dateTime);
  }

  static String shortDMYFromYMD({String stringDate}) {
    DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    DateTime dateTime = dateFormat.parse(stringDate);
    return DateFormat('d MMM y', 'id_ID').format(dateTime);
  }

  static String dateTimeDMY({DateTime date}) {
    var format = 'd MMMM y - HH:mm';
    return DateFormat(format, 'id_ID').format(date);
  }

  static String timeHHMM({TimeOfDay timeOfDay}) {
    var hourText = "${timeOfDay.hour}";
    if (timeOfDay.hour < 10) {
      hourText = "0${timeOfDay.hour}";
    }
    var minuteText = "${timeOfDay.minute}";
    if (timeOfDay.minute < 10) {
      minuteText = "0${timeOfDay.minute}";
    }

    return "$hourText:$minuteText";
  }

  static String dateYMD({@required DateTime dateTime}) {
    return DateFormat('yyyy-MM-dd').format(dateTime);
  }

  static String monthFromDate({@required DateTime dateTime}) {
    return DateFormat('MM').format(dateTime);
  }

  static String yearFromDate({@required DateTime dateTime}) {
    return DateFormat('yyyy').format(dateTime);
  }

  static String currentMonth() {
    return DateFormat('MM').format(DateTime.now());
  }

  static String currentYear() {
    return DateFormat('yyyy').format(DateTime.now());
  }
}

String currentDate({DateTime date, @required String format}) {
  if (date == null) {
    date = DateTime.now();
  }
  return DateFormat(format).format(date);
}

String currentTime({DateTime date}) {
  if (date == null) {
    date = DateTime.now();
  }
  return DateFormat('HH:mm').format(date);
}

String currentDateIndo({DateTime date}) {
  if (date == null) {
    date = DateTime.now();
  }
  var format = 'EEEE, d MMMM y';
  return DateFormat(format, 'id_ID').format(date);
}

String timeFormat(int time) {
  var result = "$time";
  if (time < 10) {
    result = "0$time";
  }

  return result;
}

String dateFormatDM({@required DateTime dateTime}) {
  return DateFormat('dd MMM').format(dateTime);
}

String dateFormatDMY({@required DateTime dateTime}) {
  return DateFormat('dd MMM yyyy').format(dateTime);
}

String dateFormatYMD({@required DateTime dateTime}) {
  return DateFormat('yyyy-MM-dd').format(dateTime);
}
