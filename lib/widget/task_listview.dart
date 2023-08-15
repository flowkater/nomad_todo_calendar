import 'package:flutter/material.dart';
import 'package:todo_calendar/entity/task.dart';

class TaskListView extends StatelessWidget {
  final List<Task> tasks;

  const TaskListView({required this.tasks, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
            child: Container(
              decoration: BoxDecoration(
                color: task.color,
                borderRadius: BorderRadius.circular(45.0),
              ),
              height: 220,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 16.0, top: 32.0, bottom: 16.0),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          task.startHour(),
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            // height: 1.0,
                          ),
                        ),
                        Text(
                          task.startMinute(),
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            height: 0.6,
                          ),
                        ),
                        const Text(
                          "|",
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.w100,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          task.endHour(),
                          style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          task.endMinute(),
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            height: 0.6,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 320,
                            child: FittedBox(
                              fit: BoxFit.fitWidth,
                              child: Text(
                                task.title,
                                style: const TextStyle(
                                  fontSize: 64.0,
                                  fontWeight: FontWeight.w500,
                                  height: 0.9,
                                ),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              for (final member in task.membersToPresentList())
                                Padding(
                                  padding: const EdgeInsets.only(right: 24.0),
                                  child: Text(
                                    member,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      color: member == 'ME'
                                          ? Colors.black
                                          : Colors.black.withAlpha(120),
                                    ),
                                  ),
                                ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
