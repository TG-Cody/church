import 'package:church/css/css.dart';
import 'package:church/screens/agenda/components/agenda_components.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class AgendaBiggerTablet extends StatefulWidget {
  @override
  _AgendaBiggerTabletState createState() => _AgendaBiggerTabletState();
}

class _AgendaBiggerTabletState extends State<AgendaBiggerTablet> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'EVENTOS',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.add_alert),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TableCalendar(
                calendarController: _controller,
                startingDayOfWeek: StartingDayOfWeek.sunday,
                calendarStyle: CalendarStyle(
                  contentDecoration: BoxDecoration(
                    color: secondaryColor,
                  ),
                  weekdayStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                  weekendStyle: TextStyle(
                    color: Colors.red.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                  selectedColor: Color(0xffde0c53),
                  selectedStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                daysOfWeekStyle: DaysOfWeekStyle(
                  weekdayStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                  weekendStyle: TextStyle(
                    color: Color(0xffde0c53),
                    fontWeight: FontWeight.bold,
                    fontSize: 19,
                  ),
                ),
                headerStyle: HeaderStyle(
                  formatButtonTextStyle: calendarButtonTextStyle,
                  titleTextStyle: calendarHeader,
                  leftChevronIcon: chevronIconLeft,
                  rightChevronIcon: chevronIconRight,
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              AgendaComponents(
                myIcon: Icons.check_circle_sharp,
                iconColor: Color(0xff00cf8d),
                title: 'Today',
                event: 'Event 1',
                description: 'Event Description',
              ),
              AgendaComponents(
                myIcon: Icons.lock_clock,
                iconColor: Colors.amber,
                title: 'Sunday',
                event: 'Event 2',
                description: 'Event Description',
              ),
              AgendaComponents(
                myIcon: Icons.lock_clock,
                iconColor: Colors.amber,
                title: 'Monday',
                event: 'Event 3',
                description: 'Event Description',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
