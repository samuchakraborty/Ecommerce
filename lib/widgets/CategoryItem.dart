import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final Color backgroundColor;

  CategoryItem(
      this.backgroundColor, this.size, this.icon, this.padding, this.margin,
      {this.iconColor = Colors.white});

  final double size;
  final IconData icon;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry margin;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.zero,
      ),
      padding: padding,
      margin: margin,
      child: Icon(icon, color: iconColor),
    );
  }
}
