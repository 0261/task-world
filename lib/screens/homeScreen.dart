import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_world/constant.dart';
import 'package:task_world/widgets/bottomNavbar.dart';
import 'package:task_world/widgets/dayButton.dart';
import 'package:task_world/widgets/projectCart.dart';
import 'package:task_world/widgets/scheduleCard.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavBar(),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 32),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SvgPicture.asset('assets/icons/menu.svg'),
                      CircleAvatar(
                        child: Icon(Icons.person),
                      )
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 48),
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Good evening!',
                              style: TextStyle(
                                  fontSize: 22, color: Color(0xFF10EAF0)),
                            ),
                            Text(
                              'Unknown',
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10)),
                                hintText: 'Want to search something...',
                                contentPadding: const EdgeInsets.all(16),
                                suffixIcon: Icon(Icons.search,
                                    color: kBackgroundPrimeColor, size: 32)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 38),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Projects', style: TextStyle(fontSize: 22)),
                            Text('View All',
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xFF10EAF0)))
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            vertical: 20.0,
                          ),
                          height: 200.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              ProjectCard(
                                  isActive: true,
                                  title: '15 New',
                                  content: 'Landing Page',
                                  icon: Icon(
                                    Icons.calendar_today,
                                    color: Color(0xFF26C6DA),
                                  )),
                              ProjectCard(
                                  title: '5 on pending',
                                  content: 'Dashboards',
                                  icon: Icon(
                                    Icons.dashboard,
                                    color: Color(0xFF26C6DA),
                                  )),
                              ProjectCard(
                                  title: '13 computer',
                                  content: 'Project',
                                  icon: Icon(
                                    Icons.computer,
                                    color: Color(0xFF26C6DA),
                                  )),
                              ProjectCard(
                                  title: '22 networking',
                                  content: 'Meeting',
                                  icon: Icon(
                                    Icons.event_available,
                                    color: Color(0xFF26C6DA),
                                  )),
                              ProjectCard(
                                  title: '1 Five',
                                  content: 'Cucumber',
                                  icon: Icon(
                                    Icons.exposure,
                                    color: Color(0xFF26C6DA),
                                  )),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        DayButton(
                          title: 'Today',
                          isActive: true,
                          press: () {},
                        ),
                        DayButton(
                          title: 'Week',
                          isActive: false,
                          press: () {},
                        ),
                        DayButton(
                          title: 'Month',
                          isActive: false,
                          press: () {},
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                    ),
                    child: Column(
                      children: <Widget>[
                        ScheduleCard(
                            title: 'UI/UX membership payment',
                            content: 'Facebook Product Design Projects',
                            time: '3:00 pm'),
                        ScheduleCard(
                            title: 'Landing Page Design + Edits',
                            content: 'Google China, Websites Designing Dept',
                            time: '5:30 pm'),
                        ScheduleCard(
                            title: 'UI/UX membership payment',
                            content: 'Facebook Product Design Projects',
                            time: '3:00 pm'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 48,
          ),
          backgroundColor: Color(0xFF10EAF0),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.centerDocked);
  }
}
