import 'package:flutter/material.dart';

class FeatureButton extends StatelessWidget {
  final String feature;
  final VoidCallback callback;
  final bool selected;

  const FeatureButton({
    required this.feature,
    required this.callback,
    required this.selected,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            feature,
            style: TextStyle(
              color: selected ? Colors.black : Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 8),
          if (selected)
            LayoutBuilder(
              builder: (context, constraints) {
                final textPainter = TextPainter(
                  text: TextSpan(
                    text: feature,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  textDirection: TextDirection.ltr,
                )..layout();
                return Container(
                  height: 2,
                  width: textPainter.width,
                  color: Colors.black,
                );
              },
            ),
        ],
      ),
    );
  }
}
