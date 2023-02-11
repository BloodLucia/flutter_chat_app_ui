import 'package:flutter/material.dart';

import '../common/colors.dart';

class RoundedButton extends GestureDetector {
  RoundedButton(
    Key? key, {
    required String text,
    VoidCallback? onTap,
  }) : super(
          onTap: onTap,
          key: key,
          child: Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        );
}
