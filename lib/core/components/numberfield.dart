import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';

class NumberField extends StatefulWidget {
  const NumberField({
    super.key,
    this.textLabel = "",
  });
  final String textLabel;

  @override
  State<NumberField> createState() => _NumberFieldState();
}

class _NumberFieldState extends State<NumberField> {
  final FocusNode _focus = FocusNode();
  bool isSelected = false;

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    isSelected = _focus.hasFocus;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.textLabel != "") ...[
          Text(
            widget.textLabel,
            style: TextStyles.poppinsBold.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: isSelected ? const Color(0xFFCB8927) : Colors.white),
          ),
          10.verticalSpace,
        ],
        TextField(
          focusNode: _focus,
          maxLines: 1,
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          cursorColor: const Color(0xFFCB8927), // Change cursor color
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFCB8927), width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFCB8927), width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
            errorBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color(0xFFCB8927), width: 2.0),
                borderRadius: BorderRadius.circular(10.0)),
          ),
          style: TextStyles.poppinsBold.copyWith(
            fontSize: 15.sp,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
