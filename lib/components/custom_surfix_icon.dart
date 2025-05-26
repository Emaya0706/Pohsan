import 'package:flutter/material.dart';
//import 'package:flutter_svg/svg.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_svg/flutter_svg.dart';
// ignore: import_of_legacy_library_into_null_safe
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import '../size_configure.dart';

class CustomSuffixicon extends StatelessWidget {
  const CustomSuffixicon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(18),
        getProportionateScreenWidth(18),
        getProportionateScreenWidth(18),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenHeight(28),
      ),
    );
  }
}
