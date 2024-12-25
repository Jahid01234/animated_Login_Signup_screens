import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;
  final Color? iconColor;
  final Color? textColor;

  const SocialMediaButton({
    super.key,
    required this.label,
    required this.icon,
    required this.color,
    this.iconColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
              icon,
              color: iconColor,
          ),
          const SizedBox(width: 5),
          Text(
            label,
            style: TextStyle(
                fontSize: 15,
                color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
