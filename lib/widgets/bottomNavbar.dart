import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(
        horizontal: 24,
      ),
      decoration: BoxDecoration(color: Color(0xFFF4F8FB)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SvgPicture.asset(
            'assets/icons/home.svg',
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            'assets/icons/cart.svg',
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            'assets/icons/heart.svg',
            width: 24,
            height: 24,
          ),
          SvgPicture.asset(
            'assets/icons/person.svg',
            width: 24,
            height: 24,
          ),
        ],
      ),
    );
  }
}
