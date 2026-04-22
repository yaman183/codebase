import 'package:codebase/constant/app_colors.dart';
import 'package:codebase/widget/custom_phone_field.dart';
import 'package:flutter/material.dart';
import 'signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController(text: '50 438 772');

    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: SafeArea(
        child: Stack(
          children: [
            /// الصورة الخلفية
            Positioned.fill(
              child: Image.asset(
                'assets/images/bg.png',
                fit: BoxFit.cover,
              ),
            ),

            /// الأزرق فوق الصورة
            Positioned.fill(
              child: Container(
                color: const Color(0xff1C5FA8).withValues(alpha: 0.45),
              ),
            ),

            /// زر اللغة
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
                  'ENG',
                  style: TextStyle(
                    color: AppColors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: width * 0.038,
                  ),
                ),
              ),
            ),

            /// المحتوى
            Column(
              children: [
                /// 👇 هذا اللي برفع البوكس لفوق
                SizedBox(height: height * 0.20),

                Expanded(
                  child: Material(
                    color: AppColors.lightBackground,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(28),
                      topRight: Radius.circular(28),
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(
                        width * 0.055,
                        height * 0.02,
                        width * 0.055,
                        height * 0.035,
                      ),
                      child: Column(
                        children: [
                          /// الخط الأخضر
                          Container(
                            width: width * 0.12,
                            height: 6,
                            decoration: BoxDecoration(
                              color: AppColors.green,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),

                          SizedBox(height: height * 0.025),

                          
                          CustomPhoneField(
                            controller: phoneController,
                          ),

                          SizedBox(height: height * 0.015),

                          /// النص تحت الفيلد
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: width * 0.02),
                              child: Text(
                                'Mobile number format: +XXX XXXXXXX',
                                style: TextStyle(
                                  fontSize: width * 0.032,
                                  color: AppColors.hint,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.035),

                          /// LOGIN BUTTON
                          SizedBox(
                            width: double.infinity,
                            height: height * 0.065,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.green,
                                foregroundColor: AppColors.primary,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30),
                                ),
                              ),
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                  fontSize: width * 0.044,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: height * 0.02),

                          /// SIGN UP BUTTON (أبيض)
                          SizedBox(
                            width: double.infinity,
                            height: height * 0.065,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const SignupScreen(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.white,
                                foregroundColor: AppColors.primary,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.circular(30),
                                  side: BorderSide(
                                    color: AppColors.primary
                                        .withValues(alpha: 0.2),
                                  ),
                                ),
                              ),
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                  fontSize: width * 0.044,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),

                          const Spacer(),
                        ],
                      ),
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