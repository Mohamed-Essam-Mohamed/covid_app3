import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Container HelpCard(BuildContext context) {
  return Container(
    height: 150,
    width: double.infinity,
    child: Stack(
      alignment: Alignment.bottomLeft,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(
            // left side padding is 40% of total width
            left: MediaQuery.of(context).size.width * .4,
            top: 20,
            right: 20,
          ),
          height: 130,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF60BE93),
                Color(0xFF1B8D59),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: "Dial 999 for \nMedical Help!\n",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.w500)),
                TextSpan(
                  text: "If any symptoms appear",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: SvgPicture.asset("assets/icons/nurse.svg"),
        ),
        Positioned(
          top: 30,
          right: 10,
          child: SvgPicture.asset("assets/icons/virus.svg"),
        ),
      ],
    ),
  );
}
