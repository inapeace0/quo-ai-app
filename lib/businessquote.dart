import 'package:dio/dio.dart';
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
  const BusinessQuote(
      {super.key,
      required this.sbTypeText,
      required this.businessLocationText,
      required this.expYearsText});

  final String sbTypeText;
  final String businessLocationText;
  final String expYearsText;

  @override
  State<BusinessQuote> createState() => _BusinessQuoteState();
}

class _BusinessQuoteState extends State<BusinessQuote> {
  final givenPriceController = TextEditingController();
  final prospectBudgetController = TextEditingController();
  final productionCostController = TextEditingController();
  String productionQualityValue = "Low";
  final featureController = TextEditingController();
  final desiredOutcomeController = TextEditingController();
  final prospectPerceivedController = TextEditingController();
  final yourPerceivedController = TextEditingController();
  final willingnessToPayController = TextEditingController();
  final yourCompetitionController = TextEditingController();
  final dio = Dio();
  bool state = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    givenPriceController.text = "\$2000";
    prospectBudgetController.text = "\$1000";
    productionCostController.text = "\$1500";
    featureController.text =
        "Teaches your how to make Successful Sales, Teaches you how to perform Market Research, and it Teaches how to launch a Shopify store";
    desiredOutcomeController.text =
        "I want to be more Knowledgeable about Dropshipping";
    prospectPerceivedController.text = "Low Value";
    yourPerceivedController.text = "Highly Valuable";
    willingnessToPayController.text = "Low";
    yourCompetitionController.text = "Other Dropshippers";
  }

  void setProductionQuality(String temp) {
    productionQualityValue = temp;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final language = S.of(context);

    return Scaffold(
      backgroundColor: const Color(0xFF2F2E2E),
      body: Stack(children: [
        if (state) ...[
          const Positioned.fill(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ],
        SingleChildScrollView(
          physics: state
              ? (const NeverScrollableScrollPhysics())
              : (const AlwaysScrollableScrollPhysics()),
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
                          controller: givenPriceController,
                        ),
                      ),
                      20.horizontalSpace,
                      Expanded(
                        child: NumberField(
                          textLabel: language.prospect_budget,
                          controller: prospectBudgetController,
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
                          controller: productionCostController,
                        ),
                      ),
                      20.horizontalSpace,
                      Expanded(
                        child: DropdownField(
                          textLabel: language.production_quality,
                          onChange: setProductionQuality,
                        ),
                      ),
                    ],
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.feature,
                    controller: featureController,
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.desired_outcome,
                    controller: desiredOutcomeController,
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.prospect_perceived_value,
                    controller: prospectPerceivedController,
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.your_perceived_value,
                    controller: yourPerceivedController,
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.willingness_pay,
                    controller: willingnessToPayController,
                  ),
                  20.verticalSpace,
                  TextArea(
                    textLabel: language.your_competition,
                    controller: yourCompetitionController,
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
                    onPressed: () async {
                      setState(() {
                        state = true;
                      });
                      final givenPriceText = givenPriceController.text;
                      final prospectBudgetText = prospectBudgetController.text;
                      final productionCostText = productionCostController.text;
                      print(productionQualityValue);
                      final featureText = featureController.text;
                      final desiredOutcomeText = desiredOutcomeController.text;
                      final prospectPerceivedText =
                          prospectPerceivedController.text;
                      final yourPerceivedText = yourPerceivedController.text;
                      final willingnessToPayText =
                          willingnessToPayController.text;
                      final yourCompetitionText =
                          yourCompetitionController.text;
                      dio.options.headers = {
                        'Content-Type': 'application/json',
                      };
                      Response response = await dio.get(
                          "https://quotion-ai-6c0a9da3f34a.herokuapp.com/api/paid-data",
                          queryParameters: {
                            "given_price": givenPriceText,
                            "prospect_budget": prospectBudgetText,
                            "desired_outcome": desiredOutcomeText,
                            "sb_type": widget.sbTypeText,
                            "exp_years": widget.expYearsText,
                            "production_cost": productionCostText,
                            "production_quality": productionQualityValue,
                            "features": featureText,
                            "perceived_value": yourPerceivedText,
                            "wilingness_to_pay": willingnessToPayText,
                            "prospect_perceived_value": prospectPerceivedText,
                            "business_location": widget.businessLocationText,
                            "competition": yourCompetitionText
                          });

                      setState(() {
                        state = true;
                      });

                      if ((response.statusCode == 200 ||
                              response.statusCode == 201 ||
                              response.statusCode == 204) &&
                          response.data["status"] == true) {
                        if (mounted) {
                          context.push('/paidquotionresponse', extra: {
                            "content": response.data["data"]["content"]
                          });
                        }
                      } else {
                        print(response.statusCode);
                        print(response.data["status"]);
                        print("failed");
                      }
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
      ]),
    );
  }
}
