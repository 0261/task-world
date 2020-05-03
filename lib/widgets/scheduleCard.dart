import 'package:flutter/material.dart';

class ScheduleCard extends StatelessWidget {
  final String title;
  final String content;
  final String time;
  const ScheduleCard({
    Key key,
    this.title,
    this.content,
    this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child:
                  Icon(Icons.check_circle, size: 28, color: Color(0xFF2CC38A))),
          Container(
            padding: const EdgeInsets.only(right: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(title,
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF132238))),
                    Container(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          time,
                          style:
                              TextStyle(fontSize: 10, color: Color(0xFF8A959E)),
                        ))
                  ],
                ),
                Text(content,
                    style: TextStyle(fontSize: 10, color: Color(0xFF8A959E))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
