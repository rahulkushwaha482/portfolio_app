import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../core/app_colors.dart';


class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Copyright @rahulkushwaha 2023™',
            style: GoogleFonts.montserrat(
              color: AppColors.light,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 2),
          Image.asset(
            'assets/developer.png',
            height: 16,
          ),
        ],
      ),
    );
  }
}
