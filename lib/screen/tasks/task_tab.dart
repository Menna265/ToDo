import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/screen/tasks/task_item.dart';
import 'package:to_do/shared/styles/colors.dart';

class TaskTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CalendarTimeline(
          initialDate: DateTime.now(),
          firstDate: DateTime.now().subtract(Duration(days: 365)),
          lastDate: DateTime.now().add(Duration(days: 365)),
          onDateSelected: (date) => print(date),
          leftMargin: 20,

          monthColor: primaryColor,
          dayColor: primaryColor,
          activeDayColor: primaryColor,
          activeBackgroundDayColor: Colors.white,
          dotsColor: Color(0xFF333A47),
          selectableDayPredicate: (date) => true,
          locale: 'en',
        ),
        Expanded(
          child: ListView.builder(itemBuilder: (context,index){
            return TaskItem();
          },
          itemCount: 8,),
        )
      ],
    );
  }
}
