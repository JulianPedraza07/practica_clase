import 'package:flutter/material.dart';

enum TextType { h1, h2, h3, h4, p }

class TextoWidget extends StatelessWidget {
  final String text;
  final TextType type;

  const TextoWidget({
    super.key,
    required this.text,
    this.type = TextType.p,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    TextStyle? style;

    switch (type) {
      case TextType.h1:
        style = textTheme.displayLarge;
        break;
      case TextType.h2:
        style = textTheme.displayMedium;
        break;
      case TextType.h3:
        style = textTheme.displaySmall;
        break;
      case TextType.h4:
        style = textTheme.bodyLarge;
        break;
      case TextType.p:
        style = textTheme.bodySmall;
        break;
    }

    return Text(
      text,
      style: style,
    );
  }
}
