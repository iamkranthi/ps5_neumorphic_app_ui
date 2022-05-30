import 'package:flutter/material.dart';
import 'package:ps5_neumorphic_app_ui/colors/constantcolors.dart';

class BarItem extends StatelessWidget {
  final IconData icon;
  final String tite;
  final bool isSelected;
  final void Function()? onTaped;

  const BarItem({
    Key? key,
    required this.icon,
    required this.tite,
    required this.isSelected,
    required this.onTaped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTaped,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9),
          color: isSelected ? Colors.black : Colors.transparent,
        ),
        child: SizedBox(
          height: 40,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                icon,
                color: isSelected ? Colors.white : ConstantColors.blackcolor,
              ),
              const SizedBox(width: 6),
              if (isSelected)
                Flexible(
                  fit: FlexFit.loose,
                  child: Text(
                    tite,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
