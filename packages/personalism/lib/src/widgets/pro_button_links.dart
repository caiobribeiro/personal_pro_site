import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personalism/src/effects/glass_box_effect.dart';

class ProCustomButtonLinks extends StatelessWidget {
  final SvgPicture buttonLeftIcon;
  final String buttonLeftLink;
  final SvgPicture buttonMiddleIcon;
  final String buttonMiddletLink;
  final SvgPicture buttonRightIcon;
  final String buttonRightLink;
  const ProCustomButtonLinks({
    super.key,
    required this.buttonLeftIcon,
    required this.buttonLeftLink,
    required this.buttonMiddleIcon,
    required this.buttonMiddletLink,
    required this.buttonRightIcon,
    required this.buttonRightLink,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: FrostedGlassBox(
        theHeight: 90,
        theWidth: MediaQuery.of(context).size.width,
        theChild: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: buttonLeftIcon,
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: buttonMiddleIcon,
              ),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                child: buttonRightIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
