import 'package:bonsai_iot/generated/assets.dart';
import 'package:flutter/cupertino.dart';

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
          color: CupertinoColors.tertiarySystemFill,
          child: Image.asset(Assets.assetsEmpty)),
    );
  }
}
