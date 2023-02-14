import 'package:flutter/material.dart';
import 'package:personalism/src/effects/glass_box_effect.dart';

class ProCustomButton extends StatelessWidget {
  final String buttonLabel;
  final IconData buttonRightIcon;
  final IconData buttonLeftIcon;
  final Function buttonFunction;
  const ProCustomButton({
    super.key,
    required this.buttonLabel,
    required this.buttonLeftIcon,
    required this.buttonRightIcon,
    required this.buttonFunction,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: buttonFunction(),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: FrostedGlassBox(
            theHeight: 90,
            theWidth: MediaQuery.of(context).size.width,
            theChild: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  buttonLeftIcon,
                  size: 40,
                ),
                Text(
                  buttonLabel,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Icon(
                  buttonRightIcon,
                  size: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
