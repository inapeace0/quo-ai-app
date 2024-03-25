import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotionai/core/components/textarea.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';
import 'package:quotionai/generated/gen/assets.gen.dart';
import 'package:quotionai/generated/l10n.dart';

class PaidQuotionResponse extends StatefulWidget {
  const PaidQuotionResponse({super.key});

  @override
  State<PaidQuotionResponse> createState() => _PaidQuotionResponseState();
}

class _PaidQuotionResponseState extends State<PaidQuotionResponse> {
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
              children: <Widget>[
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
                TextArea(
                  minLines: 20,
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
                    Navigator.pushNamed(context, '/');
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
                50.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
