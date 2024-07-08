import 'package:auto_hotspot/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Auto Hotspot',
              style: TextStyle(
                  color: AppColors.background,
                  fontFamily: 'FiraSans',
                  fontSize: 20),
            ),
          ),
          Image.asset(
            'assets/images/loumad_logo_white.png',
            width: 40,
            height: 40,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
