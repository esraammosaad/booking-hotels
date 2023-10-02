import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
class CustomCalender extends StatefulWidget {
  const CustomCalender({Key? key}) : super(key: key);

  @override
  State<CustomCalender> createState() => _CustomCalenderState();
}

class _CustomCalenderState extends State<CustomCalender> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return TableCalendar(


        availableGestures: AvailableGestures.all,
        onDaySelected: onDaySelected,
        calendarStyle: CalendarStyle(
          defaultDecoration: BoxDecoration(
              border: Border.all(color: const Color(0xffB6C0D9))),
          disabledDecoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(color: const Color(0xffB6C0D9))),
          holidayDecoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(color: const Color(0xffB6C0D9))),
          rangeHighlightColor: const Color(0x80F8A13C),
          selectedDecoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(
                color: const Color(0xffB6C0D9),
              ),
              borderRadius: BorderRadius.zero),
          markerDecoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(
                color: const Color(0xffB6C0D9),
              ),
              borderRadius: BorderRadius.zero),
          outsideDecoration: BoxDecoration(
              border: Border.all(color: const Color(0xffB6C0D9))),
          // rangeHighlightColor: kPrimaryColor,
          todayDecoration: BoxDecoration(
              color: kPrimaryColor,
              border: Border.all(color: const Color(0xffB6C0D9))),
          // withinRangeDecoration:  BoxDecoration(color: kPrimaryColor),

          isTodayHighlighted: true,
          canMarkersOverflow: true,
        ),
        onRangeSelected: (start, end, focusedDay) {

        },
        selectedDayPredicate: (day) => isSameDay(day, today),
        headerStyle: HeaderStyle(
            titleCentered: true,
            titleTextStyle: Styles.textStyle20.copyWith(
                color: const Color(0xFF262729),
                fontWeight: FontWeight.w700),
            rightChevronIcon: const Icon(
              Icons.chevron_right,
              color: kPrimaryColor,
              size: 40,
            ),
            leftChevronIcon: const Icon(
              Icons.chevron_left,
              color: kPrimaryColor,
              size: 40,
            ),
            formatButtonVisible: false),
        focusedDay: today,
        firstDay: DateTime.utc(2023, 10, 1),
        lastDay: DateTime.utc(2030, 10, 1));
  }
  onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }
}