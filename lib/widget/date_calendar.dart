import 'package:flutter/material.dart';

class DateCalendar extends StatelessWidget {
  final List<int> dates;

  const DateCalendar({required this.dates, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        left: 16.0,
        bottom: 24.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "MONDAY 16",
            style: TextStyle(
              fontSize: 16.0,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 72.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: dates.length,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return GestureDetector(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "TODAY",
                          style: TextStyle(
                            fontSize: 48.0,
                            color: index == 0 ? Colors.white : Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                        const Center(
                          child: Icon(
                            Icons.circle,
                            color: Color(0xFFB22582),
                            size: 12.0,
                          ),
                        ),
                        const SizedBox(width: 4.0),
                      ],
                    ),
                  );
                }

                return GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "${dates[index]}",
                      style: TextStyle(
                        fontSize: 48.0,
                        color: index == 0 ? Colors.white : Colors.grey,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
