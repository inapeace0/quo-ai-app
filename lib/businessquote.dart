import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quotionai/core/components/dropdown.dart';
import 'package:quotionai/core/components/numberfield.dart';
import 'package:quotionai/core/components/textarea.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';
import 'package:quotionai/generated/gen/assets.gen.dart';
import 'package:quotionai/generated/l10n.dart';

class BusinessQuote extends StatefulWidget {
  const BusinessQuote({super.key});

  @override
  State<BusinessQuote> createState() => _BusinessQuoteState();
}

class _BusinessQuoteState extends State<BusinessQuote> {
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
                  language.business_quote,
                  style: TextStyles.poppinsBold.copyWith(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Assets.png.logo.image(height: 150.h),
                20.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: NumberField(
                        textLabel: language.given_price,
                      ),
                    ),
                    20.horizontalSpace,
                    Expanded(
                      child: NumberField(
                        textLabel: language.prospect_budget,
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Row(
                  children: [
                    Expanded(
                      child: NumberField(
                        textLabel: language.production_cost,
                      ),
                    ),
                    20.horizontalSpace,
                    Expanded(
                      child: DropdownField(
                        textLabel: language.production_quality,
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.feature,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.desired_outcome,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.prospect_perceived_value,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.your_perceived_value,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.willingness_pay,
                ),
                20.verticalSpace,
                TextArea(
                  textLabel: language.your_competition,
                ),
                20.verticalSpace,
                Text(
                  language.wont_be_shown,
                  style: TextStyles.poppinsBold.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.red),
                ),
                // ElevatedButton(
                //   onPressed: () {
                //     // Add your button press logic here
                //     context.push('/freequotionresponse');
                //   },
                //   style: ButtonStyle(
                //     backgroundColor: MaterialStateProperty.all<Color>(
                //         const Color(0xFF60A735)),
                //     shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                //       RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(0.0),
                //       ),
                //     ),
                //     minimumSize: MaterialStateProperty.all(
                //         const Size(double.infinity, 50)),
                //   ),
                //   child: Text(
                //     'Analyze It!',
                //     style: TextStyles.poppinsBold.copyWith(
                //       fontSize: 30.sp,
                //       fontWeight: FontWeight.w800,
                //     ),
                //   ),
                // ),
                // 20.verticalSpace,
                ElevatedButton(
                  onPressed: () {
                    // Add your button press logic here
                    context.go('/paidquotionresponse', extra: {});
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
                    'Quotion It!',
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
