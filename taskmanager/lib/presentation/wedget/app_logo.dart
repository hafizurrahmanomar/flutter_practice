import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/asset_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(

      ///from utility/asset_path
      AssetPath.logoSvg,
      width: 300,

      fit: BoxFit.scaleDown,
    );
  }
}
