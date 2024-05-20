import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final Widget widget;

  const ContainerWidget({required this.widget, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: widget,
    );
  }
}
