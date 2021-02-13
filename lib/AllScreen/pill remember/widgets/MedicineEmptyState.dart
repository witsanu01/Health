import 'package:Health/AllScreen/pill%20remember/animations/fade_animation.dart';
import 'package:flutter/material.dart';


class MedicineEmptyState extends StatelessWidget {
  const MedicineEmptyState({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
      .5,
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(
            'assets/images/emergency.png',
            height: 120,
            width: 120,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
          Text(
            'No Medicince Added yet',
            style: TextStyle(
                fontWeight: FontWeight.w300, fontSize: 16, letterSpacing: 1.2),
          )
        ],
      ),
    );
  }
}
