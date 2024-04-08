import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';
import 'package:quotionai/generated/gen/assets.gen.dart';
import 'package:quotionai/generated/l10n.dart';

class Upgrading extends StatefulWidget {
  const Upgrading({super.key});

  @override
  State<Upgrading> createState() => _UpgradingState();
}

class _UpgradingState extends State<Upgrading> {
  @override
  Widget build(BuildContext context) {
    final language = S.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF2F2E2E),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                80.verticalSpace,
                Text(
                  language.quotion_response,
                  style: TextStyles.poppinsBold.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Assets.png.logo.image(height: 150.h),
                20.verticalSpace,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFCB8927), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Hey, Quotion AI here, in order to use this Feature please Upgrade through a \$25 USD Subscription Investment.\n\nThanks!!! 🤝",
                    style: TextStyles.poppinsBold.copyWith(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.w800,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 10,
                  ),
                ),
                20.verticalSpace,
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 20.0,
                  ),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xFFCB8927), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "FREE",
                            style: TextStyles.poppinsBold.copyWith(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFF60A735)),
                          ),
                          20.horizontalSpace,
                          Text(
                            "vs",
                            style: TextStyles.poppinsBold.copyWith(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFD9D9D9)),
                          ),
                          20.horizontalSpace,
                          Text(
                            "PAID",
                            style: TextStyles.poppinsBold.copyWith(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFCB8927)),
                          ),
                        ],
                      ),
                      20.verticalSpace,
                      const Divider(
                        color: Color(
                            0xFF99958E), // You can customize the color of the divider
                        thickness:
                            3, // You can adjust the thickness of the divider
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              "FREE",
                              style: TextStyles.poppinsBold.copyWith(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF60A735)),
                            ),
                          ),
                          20.horizontalSpace,
                          Expanded(
                            child: Text(
                              "Use All the User Inputs - Use 13 Factors.",
                              style: TextStyles.poppinsBold.copyWith(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFD9D9D9),
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              "FREE",
                              style: TextStyles.poppinsBold.copyWith(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF60A735)),
                            ),
                          ),
                          20.horizontalSpace,
                          Expanded(
                            child: Text(
                              "Uses ChatGPT-3.5 to Formulate a Response.",
                              style: TextStyles.poppinsBold.copyWith(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFD9D9D9),
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 2,
                            ),
                          )
                        ],
                      ),
                      20.verticalSpace,
                      Row(
                        children: [
                          SizedBox(
                            width: 70.w,
                            child: Text(
                              "PAID",
                              style: TextStyles.poppinsBold.copyWith(
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFFCB8927)),
                            ),
                          ),
                          20.horizontalSpace,
                          Expanded(
                            child: Text(
                              "Market Research using Google Search and GPT-4 - Uses  7 Extra Factors through a Google Search API.",
                              style: TextStyles.poppinsBold.copyWith(
                                fontSize: 15.sp,
                                fontWeight: FontWeight.w800,
                                color: const Color(0xFFD9D9D9),
                                overflow: TextOverflow.ellipsis,
                              ),
                              maxLines: 5,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                Text(
                  language.wont_be_shown,
                  style: TextStyles.poppinsBold.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your button press logic here
                    context.push('/');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFCB8927)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50)),
                  ),
                  child: Text(
                    'Back To Main',
                    style: TextStyles.poppinsBold.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                20.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    // Add your button press logic here
                    context.push('/');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFCB8927)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                    ),
                    minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50)),
                  ),
                  child: Text(
                    'Invester Here',
                    style: TextStyles.poppinsBold.copyWith(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                50.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
