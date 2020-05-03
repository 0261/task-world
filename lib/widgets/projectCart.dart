import 'package:flutter/material.dart';
import 'package:task_world/constant.dart';

class ProjectCard extends StatelessWidget {
  final String title;
  final String content;
  final List attendees;
  final Icon icon;
  final bool isActive;
  const ProjectCard({
    Key key,
    this.title,
    this.content,
    this.attendees,
    this.icon,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: Color(isActive ? 0xFF10EAF0 : 0xFFF4F8FB),
          boxShadow: [
            isActive
                ? BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 6,
                    color: kActiveShadowColor,
                  )
                : BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 6,
                    color: kShadowColor,
                  ),
          ],
          borderRadius: BorderRadius.circular(20)),
      width: 160.0,
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 38,
              height: 38,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color(isActive ? 0xFFE3F8FA : 0xFFE3F8FA)),
              child: icon,
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              child: Text(title,
                  style: TextStyle(
                      fontSize: 14,
                      color: isActive ? Colors.white : Colors.black)),
            ),
            Container(
              padding: const EdgeInsets.only(top: 2),
              child: Text(content,
                  style: TextStyle(
                      fontSize: 16,
                      color: isActive ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    child: CircleAvatar(
                      backgroundColor: Colors.brown.shade800,
                      child: Text('D'),
                    ),
                  ),
                  Positioned(
                    left: 25,
                    child: CircleAvatar(
                      backgroundColor: Colors.blue.shade800,
                      child: Text('H'),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: CircleAvatar(
                      backgroundColor: Colors.purple.shade800,
                      child: Text('C'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
