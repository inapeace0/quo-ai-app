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
  String selectedValue = "Low";

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
        Theme(
          data: Theme.of(context).copyWith(
            canvasColor: const Color(0xFF2F2E2E),
          ),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 18.sp, horizontal: 10.sp),
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFCB8927),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: DropdownButton<String>(
              value: selectedValue,
              focusNode: _focus,
              isDense: true,
              icon: const SizedBox.shrink(),
              underline: const SizedBox.shrink(),
              style: TextStyles.poppinsBold.copyWith(
                fontSize: 15.sp,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
              items: <String>['Low', 'Medium', 'High'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyles.poppinsBold.copyWith(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (String? str) {
                if (str != null) {
                  selectedValue = str;
                  setState(() {});
                }
              },
            ),
          ),
        )
      ],
    );
  }
}
