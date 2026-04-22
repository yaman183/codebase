import 'package:codebase/constant/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController(text: '50 438 772');
    final emailController = TextEditingController();

    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Stack(
        children: [
          /// 🔵 الخلفية الزرقا (كامل الشاشة)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2874E3),
                  Color(0xff1990FF),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          /// 🔵 المحتوى فوق الخلفية
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: height * 0.02),

                  /// السهم + البروجرس
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                          size: width * 0.05,
                        ),
                      ),
                      SizedBox(width: width * 0.03),

                      Expanded(
                        child: Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Container(
                              height: 12,
                              decoration: BoxDecoration(
                                color: Colors.black.withValues(alpha: 0.2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            Container(
                              width: width * 0.12,
                              height: 12,
                              decoration: BoxDecoration(
                                color: const Color(0xff67E39E),
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: height * 0.05),

                  /// Registration
                  Text(
                    'Registration',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: width * 0.065,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  SizedBox(height: height * 0.02),

                  Text(
                    "Let’s start with your mobile number and email",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: 0.85),
                      fontSize: width * 0.040,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ⚪ البوكس الأبيض (فوق كل شي)
          Positioned(
            top: height * 0.28, // 🔥 يتحكم بمكانه
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xffEEF1F6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  width * 0.06,
                  height * 0.03,
                  width * 0.06,
                  height * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// رقم الهاتف
                    _buildPhoneField(
                      controller: phoneController,
                      width: width,
                      height: height,
                    ),

                    SizedBox(height: height * 0.014),

                    Text(
                      'Mobile number format: +XXX XXXXXXXX',
                      style: TextStyle(
                        fontSize: width * 0.032,
                        color: const Color(0xffA3A9BC),
                      ),
                    ),

                    SizedBox(height: height * 0.03),

                    /// الإيميل
                    _buildEmailField(
                      controller: emailController,
                      width: width,
                      height: height,
                    ),

                    const Spacer(),

                    /// النص
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                          fontSize: width * 0.038,
                          color: AppColors.primary,
                          height: 1.4,
                        ),
                        children: [
                          const TextSpan(
                            text:
                                "By tapping next you're onboarding to FWD and you acknowledge our digital platform's ",
                          ),
                          TextSpan(
                            text: 'Privacy Policy.',
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {},
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: height * 0.02),

                    /// زر Continue
                    SizedBox(
                      width: double.infinity,
                      height: height * 0.065,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF1EFEF),
                          foregroundColor: const Color(0xffB7BDD1),
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: Text(
                          'CONTINUE',
                          style: TextStyle(
                            fontSize: width * 0.045,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// 📱 phone field
  Widget _buildPhoneField({
    required TextEditingController controller,
    required double width,
    required double height,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: 'Mobile Number',
        prefixIcon: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(width: width * 0.04),
            Text('+961'),
            Icon(Icons.keyboard_arrow_down),
          ],
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.all(width * 0.025),
          child: ClipOval(
            child: Image.asset(
              'assets/images/lebanon.png',
              width: width * 0.07,
              height: width * 0.07,
              fit: BoxFit.cover,
            ),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }

  /// 📧 email field
  Widget _buildEmailField({
    required TextEditingController controller,
    required double width,
    required double height,
  }) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        hintText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
    );
  }
}