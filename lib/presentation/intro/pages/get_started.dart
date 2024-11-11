import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:musicjoy/core/configs/assets/app_images.dart';
import 'package:musicjoy/core/configs/assets/app_vectors.dart';
import 'package:musicjoy/core/configs/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 40,
              horizontal: 40,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                  ),
                ),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  'Welcome to Music Joy - your world of music! Discover, enjoy, and immerse yourself in every favorite melody. Start your journey now!',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 13,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.15),
          )
        ],
      ),
    );
  }
}
