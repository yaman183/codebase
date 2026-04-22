import 'package:codebase/constant/app_colors.dart';
import 'package:codebase/widget/custom_phone_field.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),

            Positioned.fill(
              child: Container(
                color: const Color(0xff1C5FA8).withValues(alpha: 0.45),
              ),
            ),

            Positioned(
              top: height * 0.03,
              right: width * 0.06,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.045,
                  vertical: height * 0.012,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: 0.25),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Text(
                  'عربي',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: width * 0.038,
                  ),
                ),
              ),
            ),

            Column(
              children: [
                SizedBox(height: height * 0.37),

                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png',
                        height: height * 0.085,
                      ),
                      SizedBox(height: height * 0.1),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Welcome to ',
                              style: TextStyle(
                                fontSize: width * 0.06,
                                color: AppColors.white,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'FWD',
                              style: TextStyle(
                                fontSize: width * 0.06,
                                color: AppColors.green,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        'Enter your mobile number to proceed',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: width * 0.041,
                          color: AppColors.white,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                const Spacer(),

                Material(
                  color: AppColors.lightBackground,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(28),
                    topRight: Radius.circular(28),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(
                      width * 0.055,
                      height * 0.03,
                      width * 0.055,
                      height * 0.04,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomPhoneField(
                          controller: phoneController,
                        ),
                        SizedBox(height: height * 0.025),
                        SizedBox(
                          width: double.infinity,
                          height: height * 0.065,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.green,
                              foregroundColor: AppColors.primary,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            child: Text(
                              'Continue',
                              style: TextStyle(
                                fontSize: width * 0.044,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}