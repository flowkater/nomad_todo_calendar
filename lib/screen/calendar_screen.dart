import 'package:flutter/material.dart';
import 'package:todo_calendar/entity/task.dart';
import 'package:todo_calendar/widget/date_calendar.dart';
import 'package:todo_calendar/widget/task_listview.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  final dates = List.generate(10, (index) => index + 16);
  final tasks = [
    Task(
      title: 'DESIGN\nMEETING',
      startTime: '11:30',
      endTime: '12:30',
      color: const Color(0xFFFEF754),
      members: ['ALEX', 'HELENA', 'NANA'],
    ),
    Task(
      title: 'DAILY\nPROJECT',
      startTime: '12:35',
      endTime: '14:10',
      color: const Color(0xFF9C6BCE),
      members: ['ME', 'RICHARD', 'CIRY', 'TONY', 'KATER', 'ETC', 'ETC'],
    ),
    Task(
      title: 'WEEKLY\nPLANNING',
      startTime: '15:00',
      endTime: '16:30',
      color: const Color(0xFFBCEE4B),
      members: ['DEN', 'NANA', 'MARK'],
    ),
    Task(
      title: 'MOVIE\nWATCHING',
      startTime: '19:00',
      endTime: '22:00',
      color: const Color(0xFFB22807),
      members: ['ME', 'PAUL', 'OPENHEIMER'],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: AppBar(
            scrolledUnderElevation: 0,
            backgroundColor: const Color(0xFF1F1F1F),
            leading: const CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(
                "https://cdn.digitaltoday.co.kr/news/photo/202307/482434_450263_3759.jpg",
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.add,
                  size: 45.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          DateCalendar(dates: dates),
          TaskListView(tasks: tasks),
        ],
      ),
    );
  }
}
