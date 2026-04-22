import 'package:codebase/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTopBar extends StatelessWidget {
  final String title;

  const CustomTopBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.topBar,
      child: SizedBox(
        height: 64,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Icon(
                Icons.menu,
                color: AppColors.white,
                size: 28,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: AppColors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 28),
            ],
          ),
        ),
      ),
    );
  }
}