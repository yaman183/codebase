import 'package:codebase/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomPhoneField extends StatelessWidget {
  final TextEditingController controller;
  final bool enabled;
  final String hintText;

  const CustomPhoneField({
    super.key,
    required this.controller,
    this.enabled = true,
    this.hintText = '000000000',
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: TextInputType.phone,
      style: const TextStyle(
        fontSize: 16,
        color: AppColors.primary,
        fontWeight: FontWeight.w600,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: AppColors.hint,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        labelText: 'Mobile Number',
        labelStyle: const TextStyle(
          color: AppColors.hint,
          fontSize: 13,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 16, right: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '+961',
                style: TextStyle(
                  color: AppColors.primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(width: 4),
              Icon(
                Icons.keyboard_arrow_down,
                color: AppColors.primary,
              ),
            ],
          ),
        ),
        suffixIcon: const Padding(
          padding: EdgeInsets.only(right: 14),
          child: Icon(
            Icons.flag,
            color: Colors.red,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: const BorderSide(color: AppColors.primary),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(36),
          borderSide: const BorderSide(color: AppColors.border),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 22,
        ),
      ),
    );
  }
}