
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utility/asset_path.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// background add
          SvgPicture.asset(

            ///from utility/asset_path
            AssetPath.backgroundSvg,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(child: child)

        ],
      ),
    );
  }
}

