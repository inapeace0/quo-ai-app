import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quotionai/core/components/textarea.dart';
import 'package:quotionai/generated/gen/assets.gen.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';
import 'package:quotionai/generated/l10n.dart';

class AboutMeWidget extends StatefulWidget {
  const AboutMeWidget({super.key});

  @override
  State<AboutMeWidget> createState() => _AboutMeWidgetState();
}

class _AboutMeWidgetState extends State<AboutMeWidget> {
  @override
  Widget build(BuildContext context) {
    final language = S.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF2F2E2E),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 60.w),
          child: Center(
            child: Column(
              children: <Widget>[
                80.verticalSpace,
                Text(
                  language.aboutme,
                  style: TextStyles.poppinsBold.copyWith(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Assets.png.logo.image(height: 150.h),
                20.verticalSpace,
                TextArea(
                  textLabel: language.servicebusiness_type,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.business_location,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.years_of_experience,
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
                    print("businessquote");
                    context.push('/businessquote');
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
                    'Next',
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
