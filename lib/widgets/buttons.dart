import 'package:flutter/material.dart';

import '../core/colors.dart';
import 'ink_well.dart';
import 'progress_indicator.dart';

class BottomPlainButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final bool isDisabled;
  final bool showEndArrow;
  final bool isLoading;

  const BottomPlainButton({
    required this.label,
    this.onTap,
    this.isDisabled = false,
    this.showEndArrow = false,
    this.isLoading = false,
  });

  @override
  Widget build(final BuildContext context) {
    return ColoredBox(
      color: isDisabled ? LightCodeColors.gray100 : LightCodeColors.purpleA400,
      child: SafeArea(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            minHeight: 50,
          ),
          child: WCInkWell(
            onTap: onTap,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  label,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                if (showEndArrow) ...[],
                if (isLoading) ...[
                  const Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: EdgeInsetsDirectional.only(
                        end: 30,
                      ),
                      child: ButtonProgressIndicator(),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
