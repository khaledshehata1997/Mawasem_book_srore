import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({
    @required this.svgIcon,
  });
  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 20, 20,),
      child: SvgPicture.asset(
        svgIcon,
        height: MediaQuery.of(context).size.height*0.02,
      ),
    );
  }
}
