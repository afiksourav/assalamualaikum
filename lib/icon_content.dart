import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const labelTextstyle = TextStyle(
        fontSize: 18,
        color: Color(0xFF8D8E98)
      );

class IconContent extends StatelessWidget {
  IconContent({this.icon=FontAwesomeIcons.mars, this.label=''});
  
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(
        icon,
        size: 80.0,
      ),
      SizedBox(height: 15.0,),
      Text(label,style: labelTextstyle)
    ],);
  }
}
