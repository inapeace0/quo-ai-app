import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quotionai/core/utils/theme/text_styles.dart';

class DropdownField extends StatefulWidget {
  const DropdownField({
    super.key,
    this.textLabel = "",
  });
  final String textLabel;

  @override
  State<DropdownField> createState() => _DropdownFieldState();
}

class _DropdownFieldState extends State<DropdownField> {
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
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 5.h),
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFCB8927),
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: DropdownButton<String>(
            focusNode: _focus,
            items: <String>['Low', 'Medium', 'High'].map((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (_) {},
          ),
        ),
      ],
    );
  }
}
