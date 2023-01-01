import 'package:erg_web/shared/responsiveness.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final double? textSize;

  const CustomTextButton({
    Key? key,
    this.textSize = 18,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).colorScheme.onPrimaryContainer;
    final onsurfaceColor = Theme.of(context).colorScheme.surface;
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: _getColor(
          specialColor: onsurfaceColor,
          defaultColor: primaryColor,
        ),
        overlayColor: _getColor(
          specialColor: primaryColor,
          defaultColor: onsurfaceColor,
        ),
      ),
      child: Text(
        text,
        style: AppTextStyle.defaultTextStyle(textSize!),
      ),
    );
  }

  MaterialStateProperty<Color> _getColor({
    required Color specialColor,
    required Color defaultColor,
  }) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.hovered) ||
          states.contains(MaterialState.pressed) ||
          states.contains(MaterialState.focused)) {
        return specialColor;
      } else if (states.contains(MaterialState.disabled)) {
        return Colors.grey;
      }
      return defaultColor;
    }

    return MaterialStateProperty.resolveWith(getColor);
  }
}
