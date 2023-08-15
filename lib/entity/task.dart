import 'package:flutter/material.dart';

class Task {
  final String title;
  final String startTime;
  final String endTime;
  final Color color;
  final List<String> members;

  Task({
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.color,
    required this.members,
  });

  String startHour() {
    return startTime.split(":")[0];
  }

  String startMinute() {
    return startTime.split(":")[1];
  }

  String endHour() {
    return endTime.split(":")[0];
  }

  String endMinute() {
    return endTime.split(":")[1];
  }

  List<String> membersToPresentList() {
    if (members.length > 3) {
      final rest = members.length - 3;
      final threeMembers = members.sublist(0, 3);
      threeMembers.add("+$rest");
      return threeMembers;
    }
    return members;
  }
}
