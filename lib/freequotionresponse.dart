import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quotionai/core/components/textarea.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';
import 'package:quotionai/generated/gen/assets.gen.dart';
import 'package:quotionai/generated/l10n.dart';

class FreeQuotionResponse extends StatefulWidget {
  const FreeQuotionResponse({super.key});

  @override
  State<FreeQuotionResponse> createState() => _FreeQuotionResponseState();
}

class _FreeQuotionResponseState extends State<FreeQuotionResponse> {
  bool state = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    changeState();
  }

  void changeState() async {
    await Future.delayed(const Duration(seconds: 2), () {});
    state = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final language = S.of(context);

    if (!state) {
      return const Scaffold(
        backgroundColor: Color(0xFF2F2E2E),
        body: Center(child: CircularProgressIndicator()),
      );
    }

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
                const TextArea(minLines: 16, borderColor: Color(0xFF60A735)),
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
                50.verticalSpace
              ],
            ),
          ),
        ),
      ),
    );
  }
}
